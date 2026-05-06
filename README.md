# LGEO2250_UAV-based-aerial-surveying

**Drone-based multispectral analysis for vegetation assessment**

## AUTHORS

- Apolline De Prins
- Laura Damien
- Luc Ntede Aneque
- Danny Tiban Diaz

Course: LGEO2250 – Field Measurements in Geography  
Institution: UCLouvain – Earth and Life Institute

## DESCRIPTION

This repository contains the processed data and results of a drone-based multispectral analysis project carried out on an agricultural parcel in Gembloux, Belgium.

Two sensors were compared:

- DJI Mavic 3 Multispectral
- MicaSense Altum-PT

The data were used to produce and compare three vegetation indices:

- NDVI
- NDWI
- NDRE

### Research question

How do vegetation indices calculated from UAV multispectral data vary depending on the sensor used, and what can they reveal about vegetation conditions in the study area?

## FILE STRUCTURE

`Data/DJI_Analysis/`  
Results from the DJI Mavic 3 Multispectral sensor.

`Data/Altum_Analysis/`  
Results from the MicaSense Altum-PT sensor.

Each folder contains:

`01_Bands/`  
Spectral bands exported in `.tif` format.

`02_Indices/`  
NDVI, NDWI and NDRE indices calculated in `.tif` format.

`03_Images/`  
Final images in `.png` format used for visualization and reporting.

`metadata/`  
Metadata, data dictionary and license.

## REPRODUCING THE ANALYSES

The analyses can be reproduced by:

1. Loading the spectral bands contained in the `01_Bands/` folders
2. Calculating the NDVI, NDWI and NDRE indices
3. Exporting the raster outputs to the `02_Indices/` folders
4. Generating the final images in the `03_Images/` folders

The exact formulas, methodological details and dataset limitations are available in:

`metadata/metadata.md`

## GDPR COMPLIANCE

No personally identifiable data are included.  
The data concern an agricultural parcel and environmental variables.

## DATASET CITATION

De Prins A., Damien L., Ntede Aneque L., Tiban Diaz D. (2026).  
UAV Multispectral Vegetation Indices Dataset – Gembloux. UCLouvain.

## LICENSE

This project is licensed under the **MIT License**.  
See the [LICENSE](./LICENSE) file for details.