#' Census Data by year
#'
#' Census data #**# FILL IN DOCUMENTATION
#' @docType data
#'
#' @source #**# FILL IN
#'
"census.data"


#' Air Conditioning data from EIA survey
#'
#' Air conditioning data were taken from the Residential Energy Consumption Survey (RECS) from the U.S. Energy Information Administration
#' Data averaged from 2009 and 2015. Data were also available for 2001 and 2005, but used a different climate region system
#' Data were joined spatially based on a Climate region shapefile (see below).
#' 
#' See wnv_data_dev.R for details on data processing. Averages were computed in MS Excel.
#' 
#' The data layer used for spatial information was from the Building America website:
#' https://www.arcgis.com/home/item.html?id=8e5c3c6e1fa94e379553e199dcc4e777#overview
#' Details on the climate zone methods are here: https://www.energy.gov/sites/prod/files/2015/10/f27/ba_climate_region_guide_7.3.pdf
#' Climate Zones also appear to be available here: https://www.eia.gov/maps/layer_info-m.php
#' @docType data
#'
#' @source \url{https://www.eia.gov/consumption/residential/data/2015/}, 
#' \url{https://www.arcgis.com/home/item.html?id=8e5c3c6e1fa94e379553e199dcc4e777#overview}
#'
"ac.data"

#' FIPS Lookup Table
#' 
#' FIPS codes and CDC locations to facilitate merging data sets by either FIPS or by location
#' See wnv_data_dev.R for minor modifications to the Census data set
#'
#' @docType data
#' 
#' @source U.S. Census Bureau #**# WHERE
'fips.lookup'

#' Mosquito Ranges
#' 
#' Merge by fips column, note that location column is not present
#' Mosquito Range Maps were digitized from Kramer and Bernard 2001 using ArcGIS.
#' County level data used counties form the U.S. Census (tl_2017_us_county_LOWER_48.shp), which were updated with a column for each mosquito species
#' Mosquito_Ranges.shp
#' Presence/absence only was determined.
#' Note that range maps are out of date, as they are based on Darsie and Ward 1981 and 1989 (from 2001), and are relatively coarse.
#' No maps of Cx. restuans, although this species is known to be important in WNV transmission
#' 
#' @docType data
#' 
#' @source Bernard, K. and Kramer L. 2001 West Nile virus activity in the United States, 2001. Viral Immunology 14: 319-338.
#' Darsie, R.F., Jr., and R.A. Ward. 1981. Identification and geographical distribution of the mosquitoes of North America,
#' north of Mexico. Supplement to Mosquito Systematics 1:1-313.
#' Darsie, R.F., Jr., and R.A. Ward. 1989. Review of new Nearctic mosquito distributional records north of Mexico,
#' with notes on additions and taxonomic changes of the fauna, 1982-89. J. Am. Mosq. Control Assoc. 5:552-557
'mosquito.ranges'

#' US Quarterly GRIDMET data
#'
#' Data from the GRIDMET project, downloaded from Google Earth Engine daily by county using the
#' GRIDMET Viewer and Downloader Version 1.1 tool in the ArboMAP package (www.github.com/ecograph/ArboMAP).
#' Converted to quarterly data using the RF1 package tool convert.env.data tool designed to take data
#' from the ArboMAP daily format and put it into the RF1 input format.
#' convert.env.data is not currently an exported function, but it can be accessed with rf1:::convert.env.data
#' Currently does not include the anomaly data
#'
#' Note that the saved R object name is 'us.quarterly' and not 'us_quarter1_gridmet', the .rda file name.
#'
#' @docType data
#'
#' @source \url{https://developers.google.com/earth-engine/datasets/catalog/IDAHO_EPSCOR_GRIDMET}
#'
'us.quarterly'

