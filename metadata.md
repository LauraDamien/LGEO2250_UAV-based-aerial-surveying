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
Processing description: Raw UAV multispectral images were processed in Pix4Dmapper into GeoTIFF `.tif` raster outputs during laboratory sessions.

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

---

## 3. Content description

This dataset contains results from the processing of multispectral images acquired by drone over an agricultural parcel located in Gembloux, Belgium.

The dataset includes:

- Spectral bands exported in `.tif` format
- Vegetation indices calculated directly in Pix4Dmapper and exported in `.tif` format
- Final images exported in `.png` format
- Outputs from two multispectral sensors:
  - DJI Mavic 3 Multispectral
  - MicaSense Altum-PT

The vegetation indices produced are:

- NDVI: Normalized Difference Vegetation Index
- NDWI: Normalized Difference Water Index
- NDRE: Normalized Difference Red Edge Index

These indices were calculated directly in Pix4Dmapper during the processing workflow. The exported spectral bands are included so that the indices can also be recalculated independently if needed.

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

## 6. Data types

- Multispectral raster data
- Derived raster data
- Vegetation index maps
- Visualization images
- Orthorectified geographic data

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

---

## 10. Software used

Software used:

- Pix4Dmapper

Compatible software:

- QGIS
- ArcGIS
- R
- Python

---

## 11. Interoperability

Open or widely used formats:

- GeoTIFF `.tif`
- PNG `.png`
- Markdown `.md`
- CSV `.csv`

The raster files can be opened in GIS software such ArcGIS.

The vegetation indices can also be recalculated in GIS or programming environments such as QGIS, R or Python using the exported spectral bands.

---

## 12. Data availability

The GitHub repository provides the documentation, metadata, license and project structure.

The complete raster dataset, including spectral bands, Pix4Dmapper vegetation index outputs and visualization images, is stored externally in a UCLouvain SharePoint folder due to file size limitations.

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

---

## 15. License

MIT License

---

## 16. Scientific provenance

Dataset created as part of the course LGEO2250 – Field Measurements in Geography, UCLouvain, academic year 2025–2026.

The data were processed and analysed by students for educational purposes, using UAV multispectral images acquired over an agricultural parcel located in Gembloux, Belgium.

---

## 17. Recommended citation

De Prins A., Damien L., Ntede Aneque L., Tiban Diaz D. (2026).  
UAV Multispectral Vegetation Indices Dataset – Gembloux. UCLouvain.