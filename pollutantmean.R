pollutantmean <- function(directory, pollutant, id = 1 : 332) {
  setwd(paste0("C:/Users/Ivana/",directory))
  all_means <- 0
  for(i in id) {
    if(i < 10) {
      i_new <- paste0("00", i, ".csv")
      csv <- read.csv(i_new)
      no_na <- na.omit(csv[[pollutant]])
    }
    else if(i >=  10 && i < 100) {
      i_new <- paste0("0", i, ".csv")
      csv <- read.csv(i_new)
      no_na <- na.omit(csv[[pollutant]])
    }
    else {
      i_new <- paste0(i, ".csv")
      csv <- read.csv(i_new)
      no_na <- na.omit(csv[[pollutant]])
    }
    all_means = c(all_means, no_na)
  }
  return(mean(all_means[2: length(all_means)]))
}
