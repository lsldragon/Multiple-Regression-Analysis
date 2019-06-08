Multiple.Regression.Analysis <- function(file.name){  # create a method
  origin.data <- read.csv(file.name)       # read a set of data from csv file
  frame.data <- data.frame(origin.data)    # change the origin data to data frame
  total.time.x <- frame.data[, 1]          # get the test total time
  total.testscore.x <- frame.data[, 2]      # get the test total score
  english.profiency.y <- frame.data[, 3]   # get TEM4 score
  result <- lm(english.profiency.y ~ total.time.x + total.testscore.x)   # m. r. a. 
  summary(result)                                     # show the result
}
Multiple.Regression.Analysis("VST.csv")                   # call the method
Multiple.Regression.Analysis("WAT.csv")
