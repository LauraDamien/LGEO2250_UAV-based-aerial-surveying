# =============================================================================
# NDVI Scatter Plot Analysis: ALTUM vs DJI
# =============================================================================
# A user-defined polygon shapefile sets the exact study area.
# Both rasters are masked to that polygon before any analysis.
# ALTUM is the master raster — DJI is resampled to match its grid.
#
# Required packages:
#   install.packages(c("terra", "ggplot2", "dplyr", "scales", "viridis"))
# =============================================================================

library(terra)
library(ggplot2)
library(dplyr)
library(scales)
library(viridis)

# =============================================================================
# 1. LOAD INPUT FILES
# =============================================================================

# ️  Change these paths to where your files are located
path_altum   <- "NDVI_ALTUM.tif"
path_dji     <- "NDVI_DJI.tif"
path_polygon <- "poligon.shp"       # study area polygon

r_altum <- rast(path_altum)
r_dji   <- rast(path_dji)
study_area <- vect(path_polygon)

cat("ALTUM - CRS:",        crs(r_altum, proj = TRUE), "\n")
cat("DJI   - CRS:",        crs(r_dji,   proj = TRUE), "\n")
cat("Polygon - CRS:",      crs(study_area, proj = TRUE), "\n")
cat("ALTUM - Resolution:", res(r_altum), "\n")
cat("DJI   - Resolution:", res(r_dji),   "\n")

# =============================================================================
# 2. REPROJECT EVERYTHING TO ALTUM CRS
# =============================================================================
# ALTUM is the reference — DJI and the polygon are brought to its CRS.

if (!same.crs(r_altum, r_dji)) {
  cat("Reprojecting DJI to ALTUM CRS...\n")
  r_dji <- project(r_dji, crs(r_altum))
}

if (!same.crs(r_altum, study_area)) {
  cat("Reprojecting polygon to ALTUM CRS...\n")
  study_area <- project(study_area, crs(r_altum))
}

cat("All inputs share the same CRS.\n")

# =============================================================================
# 3. CROP AND MASK BOTH RASTERS TO THE STUDY AREA POLYGON
# =============================================================================
# crop()  → trims to the bounding box of the polygon
# mask()  → sets pixels outside the polygon boundary to NA

r_altum_masked <- crop(r_altum, study_area) |> mask(study_area)
r_dji_masked   <- crop(r_dji,   study_area) |> mask(study_area)

cat(sprintf("ALTUM pixels inside polygon: %d\n",
            sum(!is.na(values(r_altum_masked)))))
cat(sprintf("DJI   pixels inside polygon: %d\n",
            sum(!is.na(values(r_dji_masked)))))

# =============================================================================
# 4. RESAMPLE DJI TO ALTUM GRID (ALTUM is master)
# =============================================================================
# After masking, align DJI exactly to the ALTUM pixel grid.
# DJI pixels with no data inside the polygon remain NA.

r_dji_resamp <- resample(r_dji_masked, r_altum_masked, method = "bilinear")

# =============================================================================
# 5. EXTRACT VALUES AND BUILD DATA FRAME
# =============================================================================

vals_altum <- values(r_altum_masked, mat = FALSE)
vals_dji   <- values(r_dji_resamp,   mat = FALSE)

# Pixel centre coordinates (from ALTUM grid)
coords <- xyFromCell(r_altum_masked, 1:ncell(r_altum_masked))

df <- data.frame(
  x          = coords[, 1],
  y          = coords[, 2],
  NDVI_ALTUM = vals_altum,
  NDVI_DJI   = vals_dji
)

# Keep only pixels where BOTH sensors have valid, in-range data
df <- df %>%
  filter(
    !is.na(NDVI_ALTUM), !is.na(NDVI_DJI),
    NDVI_ALTUM >= -1, NDVI_ALTUM <= 1,
    NDVI_DJI   >= -1, NDVI_DJI   <= 1
  )

cat(sprintf("Valid matched pixels for analysis: %d\n", nrow(df)))

# =============================================================================
# 6. BASIC STATISTICS
# =============================================================================

cat("\n--- NDVI_ALTUM Statistics ---\n")
print(summary(df$NDVI_ALTUM))
cat("\n--- NDVI_DJI Statistics ---\n")
print(summary(df$NDVI_DJI))

# Pearson correlation, RMSE and bias
cor_val <- cor(df$NDVI_ALTUM, df$NDVI_DJI, method = "pearson")
rmse    <- sqrt(mean((df$NDVI_ALTUM - df$NDVI_DJI)^2))
bias    <- mean(df$NDVI_DJI - df$NDVI_ALTUM)

cat(sprintf("\nPearson Correlation (R): %.4f\n", cor_val))
cat(sprintf("RMSE:                    %.4f\n",   rmse))
cat(sprintf("Mean Bias (DJI - ALTUM): %.4f\n",   bias))

# =============================================================================
# 7. SUBSAMPLING 
# =============================================================================

MAX_POINTS <- 50000
if (nrow(df) > MAX_POINTS) {
  set.seed(42)
  df_plot <- df[sample(nrow(df), MAX_POINTS), ]
  cat(sprintf("\n  Data reduced to %d points for visualisation.\n", MAX_POINTS))
} else {
  df_plot <- df
}

# =============================================================================
# 8. SCATTER PLOT
# =============================================================================

lim_min <- min(c(df_plot$NDVI_ALTUM, df_plot$NDVI_DJI))
lim_max <- max(c(df_plot$NDVI_ALTUM, df_plot$NDVI_DJI))

model  <- lm(NDVI_DJI ~ NDVI_ALTUM, data = df_plot)
r2     <- summary(model)$r.squared
slope  <- coef(model)[2]
intcpt <- coef(model)[1]

label_stats <- sprintf(
  "R² = %.3f\nSlope = %.3f\nIntercept = %.3f\nRMSE = %.3f\nBias = %.3f",
  r2, slope, intcpt, rmse, bias
)

p <- ggplot(df_plot, aes(x = NDVI_ALTUM, y = NDVI_DJI)) +
  
  # 2D density heatmap
  stat_bin2d(aes(fill = after_stat(count)), bins = 80) +
  scale_fill_viridis(
    name   = "No. of pixels",
    option = "plasma",
    trans  = "log10",
    labels = label_comma()
  ) +
  
  # 1:1 line (perfect agreement)
  geom_abline(slope = 1, intercept = 0,
              color = "white", linetype = "dashed", linewidth = 0.8) +
  
  # Regression line
  geom_smooth(method = "lm", color = "#00FF99",
              linewidth = 0.9, se = TRUE, alpha = 0.25) +
  
  # Statistics box
  annotate("label",
           x     = lim_min + (lim_max - lim_min) * 0.03,
           y     = lim_max - (lim_max - lim_min) * 0.03,
           label = label_stats,
           hjust = 0, vjust = 1,
           size  = 3.5, family = "mono",
           fill  = "white", alpha = 0.85, color = "black") +
  
  # Equal axes
  coord_equal(xlim = c(lim_min, lim_max),
              ylim = c(lim_min, lim_max)) +
  scale_x_continuous(labels = label_number(accuracy = 0.01)) +
  scale_y_continuous(labels = label_number(accuracy = 0.01)) +
  
  labs(
    title    = "NDVI Scatter Plot: Micasense ALTUM vs DJI",
    subtitle = sprintf(
      "Study area: %s  |  n = %s matched pixels",
      path_polygon,
      format(nrow(df), big.mark = ",")
    ),
    x       = "NDVI — Micasense ALTUM",
    y       = "NDVI — DJI",
    caption = "White dashed line = perfect agreement (1:1)  |  Green line = linear regression"
  ) +
  
  theme_dark(base_size = 13) +
  theme(
    plot.title      = element_text(face = "bold", size = 15),
    plot.subtitle   = element_text(color = "grey70"),
    plot.caption    = element_text(color = "grey60", size = 9),
    legend.position = "right"
  )

print(p)

# =============================================================================
# 9. SAVE PLOT
# =============================================================================

ggsave(
  filename = "NDVI_scatter_ALTUM_vs_DJI.png",
  plot     = p,
  width    = 9, height = 8, dpi = 300
)

