## code to prepare `unlocode` dataset goes here
# get envt setup
setwd(here::here())
data_dir <- "./data-raw/loc192csv"
source("./data-raw/codes.R")

# load libraries
library(readr)
library(dplyr)
library(purrr)
library(glue)
library(measurements)

subdivisions <- read_csv(glue("{data_dir}/2019-2 SubdivisionCodes.csv"),
  col_names = c(
    "iso_3166_2",
    "id",
    "name",
    "subdivision"
  ),
  col_types = "cccc",
  locale = readr::locale(encoding = "latin1")
)

# get files to read
f <- list.files(data_dir, full.names = TRUE)
f <- f[grepl("CodeListPart", f)]


# read one file
read_locode <- function(a_file) {

  # read file
  # col names from https://www.unece.org/fileadmin/DAM/cefact/locode/UNLOCODE_Manual.pdf
  adf <- read_csv(a_file,
    col_names = c(
      "_",
      "iso_3166_2_country",
      "iso_3166_2_place",
      "name",
      "name_en",
      "subdivision",
      "function_code",
      "status_code",
      "date",
      "iata_code",
      "location"
    ),
    col_type = "ccccccccccc"
  ) %>%
    filter(!is.na(iso_3166_2_place)) %>%
    select(-`_`)



  # remove +/-/| from place? Doesn't seem like an issue

  # combine country and place into LOCODE
  adf <- adf %>%
    mutate(un_locode = glue("{iso_3166_2_country} {iso_3166_2_place}")) %>%
    select(-iso_3166_2_place) %>%
    select(
      un_locode, name, name_en, iso_3166_2_country, subdivision,
      iata_code, function_code, status_code, date, location
    )

  # make real-ish coordinates
  adf <- adf %>%
    tidyr::separate(location, c("latitude", "longitude", sep = " ")) %>%
    mutate(
      latitude = stringr::str_replace(latitude, "(.*)(\\d\\d)([A-Z])$", "\\1 \\2 \\3"),
      longitude = stringr::str_replace(longitude, "(.*)(\\d\\d)([A-Z])$", "\\1 \\2 \\3"),
      latitude_dec = stringr::str_replace(latitude, "^(.*) S", "\\-\\1 00"),
      latitude_dec = stringr::str_replace(latitude_dec, " N", " 00"),
      longitude_dec = stringr::str_replace(longitude, "^(.*) W", "\\-\\1 00"),
      longitude_dec = stringr::str_replace(longitude_dec, " E", " 00"),
      longitude_dec = conv_unit(longitude_dec, "deg_min_sec", "dec_deg") %>% as.numeric() %>% round(4),
      latitude_dec = conv_unit(latitude_dec, "deg_min_sec", "dec_deg") %>% as.numeric() %>% round(4)
    )

  # return
  adf %>% select(-` `)
}

# get the codes
unlocode <- map_df(f, read_locode)

# check
head(unlocode)
unlocode[grep("Boston", unlocode$name_en), ]
unlocode[grep("Heathrow", unlocode$name_en), ]
unlocode[grep("Madrid", unlocode$name_en), ]

# write the data out
usethis::use_data(unlocode, overwrite = TRUE)
