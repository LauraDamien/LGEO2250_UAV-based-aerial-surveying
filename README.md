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

This repository contains the documentation and metadata of a drone-based multispectral analysis project carried out on an agricultural parcel in Gembloux, Belgium.

The project compares vegetation indices produced from two multispectral sensors:

- DJI Mavic 3 Multispectral
- MicaSense Altum-PT

The vegetation indices compared are:

- NDVI
- NDWI
- NDRE

The indices were calculated directly in Pix4Dmapper. The exported spectral bands are also provided in the external dataset so that the indices can be recalculated if needed.

### Research question

How do vegetation indices calculated from UAV multispectral data vary depending on the sensor used?

## DATA ACCESS

Because the ZIP files and raster datasets were too large to upload directly to GitHub, the full dataset is stored externally in a UCLouvain SharePoint folder.

[UCLouvain SharePoint data folder](https://uclouvain-my.sharepoint.com/:f:/g/personal/apolline_deprins_student_uclouvain_be/IgCOXPnhTRCfQ6VD2Pzz8Qb2ARLBRLRo8t9VXJMu_YypXGc?e=D3eJrA)

## FILE STRUCTURE

The external `Data/` folder contains:

`Data/DJI_Analysis/`  
Results from the DJI Mavic 3 Multispectral sensor.

`Data/Altum_Analysis/`  
Results from the MicaSense Altum-PT sensor.

Each sensor folder contains:

`01_Bands/`  
Exported spectral bands in `.tif` format.

`02_Indices/`  
NDVI, NDWI and NDRE index rasters in `.tif` format.

`03_Images/`  
Final visualization images in `.png` format.

## REPRODUCING THE ANALYSES

To reproduce the analyses, download the data from the SharePoint folder, open the Pix4Dmapper project or exported spectral bands, and generate or recalculate the NDVI, NDWI and NDRE outputs.

More detailed methodological information, formulas and dataset limitations are available in:

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