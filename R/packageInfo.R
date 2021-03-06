#' Integrated Transport and Health Impacts Model (ITHIM)
#'
#' ITHIM is a mathematical model that integrates data on travel
#' patterns, physical activity, fine particulate matter, GHG
#' emissions, and disease and injuries. Based on population and travel
#' scenarios. The model has been used to calculate the health impacts
#' of walking and bicycling short distances usually traveled by car or
#' driving low-emission automobiles.  Please Cite: Woodcock, J.,
#' Givoni, M., & Morgan, A. S. (2013). Health impact modelling of
#' active travel visions for England and Wales using an Integrated
#' Transport and Health Impact Modelling Tool (ITHIM). PLoS One, 8(1),
#' e51462. and Maizlish, N., Woodcock, J., Co, S., Ostro, B., Fanai,
#' A., & Fairley, D. (2013). Health cobenefits and
#' transportation-related reductions in greenhouse gas emissions in
#' the San Francisco Bay area. American Journal of Public Health,
#' 103(4), 703-709.)
#'
#' The model uses comparative risk assessment through which it
#' formulates a change in the disease burden, resulting from the shift
#' in the exposure distribution from a baseline scenario to an
#' alternative scenario.
#'
#' ITHIM characterizes exposure distributions in several ways:
#'
#' -- Physical Activity --
#' Described as quintiles of a log-normal distribution on the basis of
#' the mean weekly active transport time per person, its standard
#' deviation and coefficient of variation (the standard deviation
#' divided by the mean), mean weekly non-transport physical activity,
#' and the ratio between bicycling and walking times. The activity
#' times were multiplied by weights to give metabolic-equivalent task
#' hours (METS), which reflect energy expenditures for walking and
#' cycling at average speeds and for performing occupational tasks.
#'
#' Descriptive statistics were obtained from published research on
#' walking and bicycling speeds and analysis of travel and health
#' surveys with large probability samples for the Bay Area.
#'
#'
#' -- Air Pollution --
#' To estimate exposure to air pollution, they used
#' population-weighted means of airborne fine particulate matter
#' (PM2.5), based on models calibrated for Bay Area automobile
#' emissions and air shed. The RR-PM2.5 gradient in the comparative
#' risk assessment analysis reflected the change in risk over an
#' increment of 10 micrograms per cubic meter PM2.5.
#'
#' -- Traffic Injuries --
#' Data on injuries was extracted from from a geocoded collision
#' database of fatal and serious collisions reported to police.
#'
#' Roadway type: determined roadway type associated with the collision
#' by a spatial join in mapping software (ArcGIS 10, ESRI, Redlands,
#' CA) to a street layer and categorized it as highway, arterial, or
#' local on the basis of federal and state classifications of facility
#' type.
#'
#' Daily distances walked, bicycled, and driven by drivers and
#' passengers of cars, buses, and rail from geocoded coordinates of
#' trip origins and estimations recorded in diaries of participants of
#' the 2000 Bay Area Travel Survey.
#'
#' @name ITHIM-package
#' @docType package
#' @author Samuel G. Younkin \email{syounkin@@wisc.edu}
#' @references \url{http://www.cedar.iph.cam.ac.uk/research/modelling/ithim/}, \url{https://ithim.ghi.wisc.edu/}
#' @seealso \code{\link{createITHIM}}, \code{\link{compareModels}}
#' @examples
#'
#' ITHIM.baseline <- createITHIM()
#' ITHIM.scenario <- updateITHIM(ITHIM.baseline, "muwt", 120)
#' comparativeRisk <- compareModels(ITHIM.baseline, ITHIM.scenario)
#' names(ITHIM.baseline)
#' names(ITHIM.baseline$parameters)
#' names(comparativeRisk)
#' comparativeRisk$AF$BreastCancer
NULL
