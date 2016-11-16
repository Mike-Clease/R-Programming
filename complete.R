complete <- function(directory, id = 1:332) {
  setwd(paste("C:/Users/Mike/Documents/R/Week 2/",directory,sep ="/"))
  
  files <- list.files(pattern = "csv")
  
  output <- data.frame()
  
  for (i in 1:length(id)) {
    dat <- read.csv(files[id[i]])
    len <- dim(dat)
    output[i,1] <- id[i]
    output[i,2] <- 0
    
    for (j in 1:len[1]) {
      if (!is.na(dat[j,"sulfate"]) & !is.na(dat[j,"nitrate"])){
      output[i,2] <- output[i,2] +1
      }
    }
  }
  colnames(output) <- c("id","nobs")
  output
}