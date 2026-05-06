# Dataset Metadata

## 1. Dataset Identification

Title: UAV Multispectral Vegetation Indices Dataset – Gembloux, Belgium (2026)

Creators:
- Apolline De Prins
- Laura Damien
- Luc Ntede Aneque
- Danny Tiban Diaz

Raw image acquisition: 1/01/2026
Processing period: 08/01/2026–10/01/2026  
Processing location: UCLouvain laboratory  
Processing description: Raw UAV multispectral images were processed into GeoTIFF `.tif` raster outputs during laboratory sessions.

Institution: UCLouvain – School of Geography  
Field campaign: UAV multispectral survey, agricultural parcel, Gembloux  
Resource type: Geospatial dataset, UAV multispectral imagery  
Version: 1.0

---

## 2. Content Description

This dataset contains results from the processing of multispectral images acquired by drone over an agricultural parcel located in Gembloux, Belgium.

The dataset includes:

- Spectral bands exported in `.tif` format
- Vegetation indices calculated in `.tif` format
- Final images exported in `.png` format
- Outputs from two multispectral sensors:
  - DJI Mavic 3 Multispectral
  - MicaSense Altum-PT

The vegetation indices produced are:

- NDVI: Normalized Difference Vegetation Index
- NDWI: Normalized Difference Water Index
- NDRE: Normalized Difference Red Edge Index

These indices are used to assess vegetation density, water status, and variations in chlorophyll content or vegetation stress.

---

## 3. Data Collection Methodology

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

Collection period: 1/04/2026 

---

## 4. File Structure

### Main Folder

`Data/`

This folder contains the results of the multispectral image processing.

---

### DJI Mavic 3 Multispectral Data

Folder: `Data/DJI_Analysis/`

#### Spectral Bands

Folder: `Data/DJI_Analysis/01_Bands/`  
Format: GeoTIFF  
Extension: `.tif`  
Encoding: xxx  
Coordinate system: xxx  
Spatial resolution: xxx  

Files:

- `GREEN - Green Band.tif`
- `NIR - Near Infrared.tif`
- `RED - Red Band.tif`
- `RED EDGE - Red Edge Band.tif`

Description:  
Spectral bands processed and exported after photogrammetric processing in Pix4Dmapper.

#### Vegetation Indices

Folder: `Data/DJI_Analysis/02_Indices/`  
Format: GeoTIFF  
Extension: `.tif`

Files:

- `NDRE - Normalized Difference Red Edge Index.tif`
- `NDVI - Normalized Difference Vegetation Index.tif`
- `NDWI - Normalized Difference Water Index.tif`

Description:  
Vegetation indices calculated from the Green, Red, Red Edge and NIR spectral bands.

#### Final Images

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

### MicaSense Altum-PT Data

Folder: `Data/Altum_Analysis/`

#### Spectral Bands

Folder: `Data/Altum_Analysis/01_Bands/`  
Format: GeoTIFF  
Extension: `.tif`  
Encoding: xxx  
Coordinate system: xxx  
Spatial resolution: xxx  

Files:

- `GREEN - Green Band.tif`
- `NIR - Near Infrared.tif`
- `RED - Red Band.tif`
- `RED EDGE - Red Edge Band.tif`

Description:  
Spectral bands processed and exported after photogrammetric processing in Pix4Dmapper.

#### Vegetation Indices

Folder: `Data/Altum_Analysis/02_Indices/`  
Format: GeoTIFF  
Extension: `.tif`

Files:

- `NDRE - Normalized Difference Red Edge Index.tif`
- `NDVI - Normalized Difference Vegetation Index.tif`
- `NDWI - Normalized Difference Water Index.tif`

Description:  
Vegetation indices calculated from the Green, Red, Red Edge and NIR spectral bands.

#### Final Images

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

## 5. Data Types

- Multispectral raster data
- Derived raster data
- Vegetation index maps
- Visualization images
- Orthorectified geographic data

---

## 6. Spectral Bands Used

The bands used to calculate the indices are:

- Green
- Red
- Red Edge
- Near-Infrared, NIR

The DJI Mavic 3 Multispectral sensor includes the following bands:

- Green: 560 ± 16 nm
- Red: 650 ± 16 nm
- Red Edge: 730 ± 16 nm
- NIR: 860 ± 26 nm

The MicaSense Altum-PT sensor includes the following bands:

- Blue: 475 nm
- Green: 560 nm
- Red: 668 nm
- Red Edge: 717 nm
- NIR: 842 nm

In this project, only the bands common to both sensors were used for comparison.

---

## 7. Vegetation Indices

### NDVI

Full name: Normalized Difference Vegetation Index  
Formula:

`NDVI = (NIR - Red) / (NIR + Red)`

Description:  
NDVI is used to estimate vegetation density and general vegetation condition. High values generally indicate dense and healthy vegetation.

---

### NDWI

Full name: Normalized Difference Water Index  
Formula:

`NDWI = (Green - NIR) / (Green + NIR)`

Description:  
NDWI is used to identify differences related to water, soil moisture or vegetation water content.

---

### NDRE

Full name: Normalized Difference Red Edge Index  
Formula:

`NDRE = (NIR - Red Edge) / (NIR + Red Edge)`

Description:  
NDRE is used to detect differences related to chlorophyll content, vegetation stress or plant nutrient status.

---

## 8. Processing Steps

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
- Calculating NDVI, NDWI and NDRE indices
- Exporting final maps in `.tif` format
- Exporting visualization images in `.png` format

---

## 9. Software Used

Software used:

- Pix4Dmapper

Compatible software:

- QGIS
- ArcGIS
- R
- Python


---

## 10. Interoperability

Open or widely used formats:

- GeoTIFF `.tif`
- PNG `.png`
- Markdown `.md`
- CSV `.csv`

The raster files can be opened in GIS software such as QGIS or ArcGIS.

---

## 11. Data Sensitivity and Protection

No personally identifiable data are included.

The data concern an agricultural parcel and environmental variables derived from multispectral imagery. The dataset complies with GDPR principles.

---

## 12. Dataset Limitations

The main limitations are:

- No reflectance panel radiometric calibration for the DJI Mavic 3 Multispectral data
- Possible effects of changing sunlight conditions during the flight
- Possible artifacts along the edges of the mosaics
- Technical differences between the sensors
- Differences in spatial resolution between datasets
- Uncertainty related to GPS/RTK positioning and ground control points
- Processing parameters partly dependent on the educational context of the project

---

## 13. Reuse

The data are:

- Structured
- Documented
- Organized by sensor
- Organized by output type
- Reusable in GIS software
- Suitable for comparing vegetation indices between two multispectral sensors

---

## 14. License

MIT License

---

## 15. Scientific Provenance

Dataset created as part of the course LGEO2250 – Field Measurements in Geography, UCLouvain, academic year 2025–2026.

The data were processed and analysed by students for educational purposes, using UAV multispectral images acquired over an agricultural parcel located in Gembloux, Belgium.

---

## 16. Recommended Citation

De Prins A., Damien L., Ntede Aneque L., Tiban Diaz D. (2026).  
UAV Multispectral Vegetation Indices Dataset – Gembloux. UCLouvain.