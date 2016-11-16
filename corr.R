corr <- function(directory, threshold = 0) {
  oldir <- "C:/Users/Mike/Documents/R/Week 2/"
  setwd(oldir)
  source("complete.R")
  
  cc <- complete("specdata")
  setwd(paste(oldir,directory,sep ="/"))
  
  useable <- data.frame()
  files <- list.files()
  
  meets <- cc$nobs > threshold
  useable <- cc[meets,]
  dims <- dim(useable)
  cors <- numeric()
  
  if (dims[1] > 0) {
  for (i in 1:dims[1]){
    data <- read.csv(files[useable[i,1]])
    cors[i] <- cor(x = data$sulfate, y = data$nitrate, use = "complete.obs")
  }
  }
  setwd(oldir)
  cors
}