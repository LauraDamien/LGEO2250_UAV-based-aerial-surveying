# Dataset metadata

## 1. Dataset identification

Title: UAV Multispectral Vegetation Indices Dataset – Gembloux, Belgium (2026)

Creators:

- Apolline De Prins
- Laura Damien
- Luc Ntede Aneque
- Danny Tiban Diaz

Raw image acquisition: 01/04/2026  
Processing period: 08/01/2026–10/01/2026  
Processing location: UCLouvain laboratory  
Processing description: Raw UAV multispectral images were processed in Pix4Dmapper into GeoTIFF `.tif` raster outputs during laboratory sessions. A complementary quantitative comparison between sensors was also carried out in R using the exported vegetation index rasters.

Institution: UCLouvain – School of Geography  
Field campaign: UAV multispectral survey, agricultural parcel, Gembloux  
Resource type: Geospatial dataset, UAV multispectral imagery  
Version: 1.0

---

## 2. Data access

The full dataset is not stored directly in the GitHub repository because the raster files and ZIP archives are too large.

The complete dataset is available through the following UCLouvain SharePoint folder:

[External data folder – SharePoint](https://uclouvain-my.sharepoint.com/:f:/g/personal/apolline_deprins_student_uclouvain_be/IgCOXPnhTRCfQ6VD2Pzz8Qb2ARLBRLRo8t9VXJMu_YypXGc?e=D3eJrA)

Users should download the external data from this folder before reproducing the analysis.

The SharePoint folder also contains the scatterplot outputs produced during the quantitative comparison between the DJI Mavic 3 Multispectral and MicaSense Altum-PT datasets.

---

## 3. Content description

This dataset contains results from the processing of multispectral images acquired by drone over an agricultural parcel located in Gembloux, Belgium.

The dataset includes:
Outputs from two multispectral sensors:

- Spectral bands exported in `.tif` format
- Vegetation indices calculated directly in Pix4Dmapper and exported in `.tif` format
- Final images exported in `.png` format
- Scatterplot images from the quantitative sensor comparison in `.png` format


The vegetation indices produced are:

- NDVI: Normalized Difference Vegetation Index
- NDWI: Normalized Difference Water Index
- NDRE: Normalized Difference Red Edge Index

These indices were calculated directly in Pix4Dmapper during the processing workflow. The exported spectral bands are included so that the indices can also be recalculated independently if needed.

A quantitative comparison between the DJI Mavic 3 Multispectral and MicaSense Altum-PT vegetation index rasters was also done in R. This comparison included pixel-based statistics and scatterplots for NDVI, NDWI and NDRE. The R code is available in the GitHub repository as `SCATTERplot.R`, while the scatterplot outputs are stored in the external SharePoint folder.

---

## 4. Data collection methodology

Method: Drone-based multispectral image acquisition  
Collection location: Gembloux, Belgium  
Geographical context: Agricultural parcel  
Flight altitude: 80 m AGL  
Forward overlap: 80%  
Side overlap: 80%  
Acquisition mode: Automatic capture  
Capture interval: 2 seconds  
Weather conditions: Clear and calm conditions  
Positioning system: GPS, IMU, RTK  
RTK correction: Wallonia correction network  
Ground control points: available for Altum-PT  

Sensors used:

1. DJI Mavic 3 Multispectral
2. MicaSense Altum-PT

For the MicaSense Altum-PT, radiometric calibration was performed using a reflectance panel and the DLS sensor.

For the DJI Mavic 3 Multispectral, processing was carried out without reflectance panel calibration.

Collection period: 01/04/2026

---

## 5. File structure

Due to file size limitations, the complete `Data/` folder is hosted externally in the UCLouvain SharePoint folder rather than directly in the GitHub repository.

External data folder:  
[UCLouvain SharePoint data folder](https://uclouvain-my.sharepoint.com/:f:/g/personal/apolline_deprins_student_uclouvain_be/IgCOXPnhTRCfQ6VD2Pzz8Qb2ARLBRLRo8t9VXJMu_YypXGc?e=D3eJrA)

### Main folder

`Data/`

This folder contains the results of the multispectral image processing.

---

### DJI Mavic 3 Multispectral data

Folder: `Data/DJI_Analysis/`

#### Spectral bands

Folder: `Data/DJI_Analysis/01_Bands/`  
Format: GeoTIFF  
Extension: `.tif`  
Encoding: GeoTIFF raster  
Coordinate system: ETRS89 / Belgian Lambert 2008  
Spatial resolution: 3.18 cm/pixel  

Files:

- `GREEN - Green Band.tif`
- `NIR - Near Infrared.tif`
- `RED - Red Band.tif`
- `RED EDGE - Red Edge Band.tif`

Description:  
Spectral bands processed and exported after photogrammetric processing in Pix4Dmapper. These bands document the inputs used for the vegetation indices and can be used to recalculate the indices if needed.

#### Vegetation indices

Folder: `Data/DJI_Analysis/02_Indices/`  
Format: GeoTIFF  
Extension: `.tif`

Files:

- `NDRE - Normalized Difference Red Edge Index.tif`
- `NDVI - Normalized Difference Vegetation Index.tif`
- `NDWI - Normalized Difference Water Index.tif`

Description:  
Vegetation indices calculated directly in Pix4Dmapper from the Green, Red, Red Edge and NIR spectral bands.

#### Final images

Folder: `Data/DJI_Analysis/03_Images/`  
Format: PNG  
Extension: `.png`

Files:

- `NDRE.png`
- `NDVI.png`
- `NDWI.png`

Description:  
Final images used for visualization, interpretation and reporting.

---

### MicaSense Altum-PT data

Folder: `Data/Altum_Analysis/`

#### Spectral bands

Folder: `Data/Altum_Analysis/01_Bands/`  
Format: GeoTIFF  
Extension: `.tif`  
Encoding: GeoTIFF raster  
Coordinate system: ETRS89 / Belgian Lambert 2008  
Spatial resolution: 3.51 cm/pixel  

Files:

- `GREEN - Green Band.tif`
- `NIR - Near Infrared.tif`
- `RED - Red Band.tif`
- `RED EDGE - Red Edge Band.tif`

Description:  
Spectral bands processed and exported after photogrammetric processing in Pix4Dmapper. These bands document the inputs used for the vegetation indices and can be used to recalculate the indices if needed.

#### Vegetation indices

Folder: `Data/Altum_Analysis/02_Indices/`  
Format: GeoTIFF  
Extension: `.tif`

Files:

- `NDRE - Normalized Difference Red Edge Index.tif`
- `NDVI - Normalized Difference Vegetation Index.tif`
- `NDWI - Normalized Difference Water Index.tif`

Description:  
Vegetation indices calculated directly in Pix4Dmapper from the Green, Red, Red Edge and NIR spectral bands.

#### Final images

Folder: `Data/Altum_Analysis/03_Images/`  
Format: PNG  
Extension: `.png`

Files:

- `NDRE.png`
- `NDVI.png`
- `NDWI.png`

Description:  
Final images used for visualization, interpretation and reporting.

---

### Scatterplot outputs

Folder: `scatterplot/`  
Location: external UCLouvain SharePoint folder  
Format: PNG  
Extension: `.png`

Files:

- `NDRE_scatter_ALTUM_vs_DJI.png`
- `NDVI_scatter_ALTUM_vs_DJI.png`
- `NDWI_scatter_ALTUM_vs_DJI.png`

Description:  
This folder contains the scatterplots produced during the quantitative comparison between the MicaSense Altum-PT and DJI Mavic 3 Multispectral vegetation index rasters.

The scatterplots compare matched pixel values for:

- NDVI
- NDWI
- NDRE

In each scatterplot, the MicaSense Altum-PT values are plotted on the x-axis and the DJI Mavic 3 Multispectral values are plotted on the y-axis. The plots include a 1:1 line, a regression line and a density representation of the number of pixels.

These outputs were used to evaluate the relationship between both sensors and to identify bias, error and differences in value range.

---

### R code for statistical comparison

File: `SCATTERplot.R`  
Location: GitHub repository  
Format: R script  
Extension: `.R`

Description:  
The R script `SCATTERplot.R` was used for the quantitative comparison. It is available in the GitHub repository. It allows the statistical comparison to be reproduced using the exported vegetation index rasters and the study area polygon.

The script loads the Altum-PT and DJI vegetation index rasters, masks both rasters to the same polygon, checks and harmonizes the coordinate reference systems, resamples the DJI raster to the Altum-PT grid, extracts matched pixel values and calculates statistical indicators.

The calculated statistics include:

- Pearson correlation
- Linear regression
- R²
- Regression slope
- Regression intercept
- RMSE
- Mean bias

---

## 6. Data types

- Multispectral raster data
- Derived raster data
- Vegetation index maps
- Visualization images
- Scatterplot images
- Orthorectified geographic data
- Quantitative statistical comparison outputs
- R script for reproducible analysis

---

## 7. Spectral bands used

The bands used to calculate the indices are:

- Green
- Red
- Red Edge
- Near-Infrared, NIR

In this project, only the bands common to both sensors were used for comparison.

---

## 8. Vegetation indices

The vegetation indices were calculated directly in Pix4Dmapper during the processing workflow. The formulas are provided to document the calculation method and to allow users to recalculate the indices from the exported spectral bands if needed.

### NDVI

Full name: Normalized Difference Vegetation Index  
Formula:

`NDVI = (NIR - Red) / (NIR + Red)`

---

### NDWI

Full name: Normalized Difference Water Index  
Formula:

`NDWI = (Green - NIR) / (Green + NIR)`

---

### NDRE

Full name: Normalized Difference Red Edge Index  
Formula:

`NDRE = (NIR - Red Edge) / (NIR + Red Edge)`

---

## 9. Processing steps

The processing workflow included:

- Importing `.tif` images into Pix4Dmapper
- Checking image metadata
- Checking the coordinate system
- Performing radiometric calibration for the MicaSense Altum-PT sensor
- Processing the DJI Mavic 3 Multispectral data without reflectance panel calibration
- Aligning the images
- Generating tie points
- Optimizing camera positions and orientations
- Using or checking ground control points
- Generating the dense point cloud
- Generating the DSM
- Producing orthomosaics
- Exporting spectral bands
- Calculating NDVI, NDWI and NDRE directly in Pix4Dmapper
- Exporting vegetation index rasters in `.tif` format
- Exporting visualization images in `.png` format
- Running the quantitative statistical comparison with `SCATTERplot.R`
- Cropping and masking both sensor rasters to the same study area polygon
- Reprojecting files when needed to use the same coordinate reference system
- Resampling the DJI raster to the Altum-PT raster grid
- Extracting matched pixel values from both sensors
- Removing NoData values and values outside the -1 to +1 index range
- Calculating correlation, R², regression slope, intercept, RMSE and bias
- Producing scatterplots for NDVI, NDWI and NDRE

For the statistical comparison, the MicaSense Altum-PT rasters were used as the reference dataset because they were radiometrically calibrated with a reflectance panel and DLS sensor. The DJI Mavic 3 Multispectral rasters were compared to this reference dataset.

The bias was calculated as:

`Bias = mean(DJI - Altum)`

A negative bias means that the DJI values were lower than the Altum-PT values.

The R code used for this quantitative comparison is available in the GitHub repository as `SCATTERplot.R`. The scatterplot outputs are available in the `scatterplot/` folder in the external UCLouvain SharePoint folder.

---

## 10. Software used

Software used:

- Pix4Dmapper
- R

Compatible software:

- QGIS
- ArcGIS
- R
- Python

R packages used for the statistical comparison:

- terra
- ggplot2
- dplyr
- scales
- viridis

---

## 11. Interoperability

Open or widely used formats:

- GeoTIFF `.tif`
- PNG `.png`
- Markdown `.md`
- CSV `.csv`
- R script `.R`

The raster files can be opened in GIS software such ArcGIS.

The vegetation indices can also be recalculated in GIS or programming environments such as QGIS, R or Python using the exported spectral bands.

The statistical comparison can be reproduced in R using the `SCATTERplot.R` script available in the GitHub repository, the exported vegetation index rasters and the study area polygon. The scatterplot outputs can be viewed as `.png` images from the external SharePoint folder.

---

## 12. Data availability

The GitHub repository provides the documentation, metadata, license, project structure and the `SCATTERplot.R` code used for the statistical comparison.

The complete raster dataset, including spectral bands, Pix4Dmapper vegetation index outputs, visualization images and scatterplot outputs, is stored externally in a UCLouvain SharePoint folder due to file size limitations.

External data folder:  
[UCLouvain SharePoint data folder](https://uclouvain-my.sharepoint.com/:f:/g/personal/apolline_deprins_student_uclouvain_be/IgCOXPnhTRCfQ6VD2Pzz8Qb2ARLBRLRo8t9VXJMu_YypXGc?e=D3eJrA)

Users must download the external data before reproducing the analyses.

---

## 13. Data sensitivity and protection

No personally identifiable data are included.

The data concern an agricultural parcel and environmental variables derived from multispectral imagery. The dataset complies with GDPR principles.

---

## 14. Reuse

The data are:

- Structured
- Documented
- Organized by sensor
- Organized by output type
- Reusable in GIS software
- Suitable for comparing vegetation indices between two multispectral sensors
- Suitable for recalculating NDVI, NDWI and NDRE from the exported spectral bands if needed
- Suitable for reproducing the quantitative comparison between DJI and Altum-PT index rasters using `SCATTERplot.R` available on GitHub
- Suitable for interpreting the scatterplot outputs stored in the external SharePoint folder

---

## 15. License

MIT License

---

## 16. Scientific provenance

Dataset created as part of the course LGEO2250 – Field Measurements in Geography, UCLouvain, academic year 2025–2026.

The data were processed and analysed by students for educational purposes, using UAV multispectral images acquired over an agricultural parcel located in Gembloux, Belgium.

The vegetation index rasters were first produced in Pix4Dmapper. A second quantitative analysis was then carried out in R with `SCATTERplot.R` to compare the DJI Mavic 3 Multispectral and MicaSense Altum-PT results using matched pixels inside the study area. The scatterplots from this analysis are stored in the external SharePoint folder.

---

## 17. Recommended citation

De Prins A., Damien L., Ntede Aneque L., Tiban Diaz D. (2026).  
UAV Multispectral Vegetation Indices Dataset – Gembloux. UCLouvain.