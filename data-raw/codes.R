## code to prepare `codes` dataset goes here

function_code <- data.frame(
  stringsAsFactors = FALSE,
  funct_code = c(1L, 2L, 3L, 4L, 5L, 6L, 7L, 8L, 0L),
  function_type = c(
    "port", "rail terminal",
    "road terminal", "airport", "postal exchange office",
    "multimodal functions", "fixed transport functions",
    "border crossing", "function not known, to be specified"
  )
)

eclac_code <- data.frame(
  stringsAsFactors = FALSE,
  eclac_code = c(
    "1", "2", "3", "4", "5", "6",
    "7", "8", "9", "A", "F", "G", "L"
  ),
  water_body = c(
    "Atlantic Ocean and dependencies", "Pacific Ocean and dependencies",
    "Indian Ocean and dependencies", "North Sea", "Baltic Sea",
    "Mediterranean Sea", "Black Sea", "Gulf of Mexico", "Caribbean Sea",
    "Arctic Ocean", "River port", "North American Great Lakes",
    "Lake port"
  )
)

status_code <- data.frame(
  stringsAsFactors = FALSE,
  st_code = c(
    "AA",
    "AC", "AF", "AI", "AM", "AS", "AQ", "RL", "RN",
    "RQ", "RR", "QQ", "UR", "XX"
  ),
  definition = c(
    "Approved by competent national government agency",
    "Approved by Customs Authority",
    "Approved by national facilitation body",
    "Code adopted by international organisation (IATA or ECLAC)",
    "Approved by the UN/LOCODE Maintenance Agency",
    "Approved by national standardisation body",
    "Entry approved, functions not verified",
    "Recognised location - Existence and representation of location name confirmed by check against nominated gazetteer or other reference work",
    "Request from credible national sources for locations in their own country",
    "Request under consideration", "Request rejected",
    "Original entry not verified since date indicated",
    "Entry included on user's request; not officially approved",
    "Entry that will be removed from the next issue of UN/LOCODE"
  )
)

usethis::use_data(status_code, overwrite = TRUE)
usethis::use_data(function_code, overwrite = TRUE)
usethis::use_data(eclac_code, overwrite = TRUE)
