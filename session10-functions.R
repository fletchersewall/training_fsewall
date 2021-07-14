airtemps <- c(212, 30.3, 78, 32)
celsius1 <- (airtemps[1] - 32) * 5/9
celsius2 <- (airtemps[2] - 32) * 5/9
celsius3 <- (airtemps[3] - 32) * 5/9

# The template for the next lines are from the "Code" menu, 
# Insert Roxygen Skeleton:

#' Convert fahrenheit to celsius
#'
#' @param fahr Our fahrenheit values
#'
#' @return The converted values in celsius
#' @export
#'
#' @examples
#' fahr_to_celsius(212)
fahr_to_celsius <- function(fahr) {
  (fahr - 32) * 5/9
}

fahr_to_celsius(airtemps)

airtemps2 <- c(0, 100, 50)
celsius_to_fahr <- function(celsius) {
  (celsius * 9/5) + 32
}

celsius_to_fahr(airtemps2)

convert_temps <- function(fahr) {
  celsius <- (fahr - 32) * 5/9
  kelvin <- celsius + 273.15
  
  list(fahr = fahr, celsius = celsius, kelvin = kelvin)
}

temps_df <- data.frame(convert_temps(seq(-100, 100, 10)))

library(ggplot2) # Normally would load libraries at start of script

custom_theme <- function(base_size = 9) {
  ggplot2::theme(text = element_text(size = base_size))
}

ggplot(temps_df, aes(fahr, celsius, color = kelvin)) +
  geom_point() +
  custom_theme(20)
  
scatterplot <- function(df, font_size=9) {
  ggplot(df, mapping=aes(x=fahr, y=celsius, color=kelvin)) +
    geom_point() +
    custom_theme(font_size)
}  

