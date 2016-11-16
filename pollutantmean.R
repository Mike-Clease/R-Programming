pollutantmean <- function(directory,pollutant,id = 1:332){
  setwd("C:/Users/Mike/Documents/R/Week 2")
  setwd(directory)
  dat <- data.frame()
  
  files <- list.files()
    for (i in 1:length(id)){
        dat <- rbind(dat,read.csv(files[id[i]]))
      }
  
  mean(dat[,pollutant],na.rm = TRUE)
 }