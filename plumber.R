library(jsonlite)
library(purrr)

#* @param temperature The temperature
#* @param precipitation The precipitation
#* @post /compute_suitability_SCSM
function(temperature = NULL, precipitation = NULL) {
  compute_suitability_SCSM(inputsdata = data.frame(
    temperature = temperature,
    precipitation = precipitation
  ))
}
