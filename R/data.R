#' UN LOCODEs
#'
#' A dataset containing the UN Code for Trade and Transport Locations
#'
#' @format A data frame with 111178 rows and 13 variables:
#' \describe{
#' Column descriptions are taken verbatim from the UNLOCODE manual found at \url{http://www.unece.org/cefact/codesfortrade/codes_index.html/}.
#'   \item{unlocode}{Column 1 in UN/LOCODE shows the ISO 3166 alpha-2 Country Code that is followed by a space and a 3-character code for the place name: XX XXX. The 3-character code element for the location name will normally comprise three letters. However, where all permutations available for a country have been exhausted, the numerals 2-9 may also be used. }
#'   \item{name}{The names of those locations that have been accepted for inclusion in UN/LOCODE in accordance with the provisions of the Recommendation. Place names are given, whenever possible, in their national language versions as expressed in the Roman alphabet using the 26 characters of the character set adopted for international trade data interchange, with diacritic signs, when practicable.}
#'   \item{name_en}{The names of the locations which have been allocated an UN/LOCODE without diacritic signs.}
#'   \item{iso_3166_2_country}{Country code of location as in the International Standard ISO 3166-2/1998.}
#'   \item{subdivision}{The latter part of the complete ISO 3166-2 code element (after the hyphen) is shown, as a qualifier to the location name. See \code{\link{eclac_code}} for non-terrestrial locations.}
#'   \item{iata_code}{International Air Transport Association code, if different from the second part of the LOCODE.}
#'   \item{function_code}{This column contains a 1-digit function classifier codes for the location together in a string. See \code{\link{function_code}}.}
#'   \item{status_code}{This column is intended to indicate the status of the entry by a 2-character code e.g. whether approved by Government, by Customs, or based on a user requirement not necessarily recognised by an authority, etc. It is also intended to show the status of checking, e.g. that function indicators are not verified. See See \code{\link{status_code}}.}
#'   \item{date}{Reference dates, showing the year and month of request, of entry into the code list, of latest approval, etc., as relevant.}
#'   \item{latitude}{Latitude in Degrees Minutes N/S, as in original data}
#'   \item{longitde}{Longitude in Degrees Minutes W/E, as in original data}
#'   \item{latitude_dec}{Latitude in decimal degrees (EPSG = 4326)}
#'   \item{longitude_dec}{Longitude in decimal degrees (EPSG = 4326)}
#' }
#' @source \url{http://www.unece.org/cefact/codesfortrade/codes_index.html/}
"unlocode"

#' United Nations Economic Commission for Latin America and the Caribbean Body of Water Codes
#'
#' A dataset containing the ECLAC Codes
#'
#' @format A data frame with 13 rows and 2 variables:
#' \describe{
#'   \item{eclac_code}{The ECLAC code}
#'   \item{water_body}{Water body represented by the code}
#'   ...
#' }
#' @source \url{http://www.unece.org/cefact/codesfortrade/codes_index.html/}
"eclac_code"



#' Status Codes
#'
#' A dataset containing the UN ST Codes
#'
#' @format A data frame with 53940 rows and 10 variables:
#' \describe{
#'   \item{status_code}{Two character code}
#'   \item{definition}{The status of the entry by a 2-character code e.g. whether approved by Government, by Customs, or based on a user requirement not necessarily recognised by an authority, etc. It is also intended to show the status of checking, e.g. that function indicators are not verified.}
#'   ...
#' }
#' @source \url{http://www.unece.org/cefact/codesfortrade/codes_index.html/}
"status_code"

#' Function Codes
#'
#' A dataset containing the UN Function Classifier Codes
#'
#' @format A data frame with 14 rows and 2 variables:
#' \describe{
#'   \item{funct_code}{Single digit function code.}
#'   \item{function_type}{The type of function represented by each code.}
#'   ...
#' }
#' @source \url{http://www.unece.org/cefact/codesfortrade/codes_index.html/}
"function_code"
