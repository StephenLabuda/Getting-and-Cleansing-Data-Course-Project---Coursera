testwd <- "C:/Users/sjlba/OneDrive/Documents/r-studio-test/R Studio/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test"
trainwd <- "C:/Users/sjlba/OneDrive/Documents/r-studio-test/R Studio/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train"
collumns <- c("total_acc_x_mean", "total_acc_x_std", "total_acc_y_mean", 
              "total_acc_y_std", "total_acc_z_mean", "total_acc_z_std",
              "body_gyro_x_mean", "body_gyro_x_std", "body_gyro_y_mean",
              "body_gyro_y_std", "body_gyro_z_mean", "body_gyro_z_std",
              "body_acc_x_mean", "body_acc_x_std", "body_acc_y_mean", 
              "body_acc_y_std", "body_acc_z_mean", "body_acc_z_std")
rows <- c("")
collumnindex <- c(1, 4, 2, 5, 3, 6, 121, 124, 122, 125, 123,
                  126, 266, 269, 267, 270, 268, 271)
valueindex <- c()
for(i in 1:length(collumnindex)){
  setwd(trainwd)
  train <- read.csv("X_train.csv")
  setwd(testwd)
  test <- read.csv("x_test.csv")
  totalvec <- c()
  for(j in 1:nrow(train)){
    totalvec <- c(totalvec, train[j, collumnindex[i]])
  }
  for(k in 1:nrow(test)){
    totalvec <- c(totalvec, test[k, collumnindex[i]])
  }
  x <- mean(totalvec)
  valueindex <- c(valueindex, x)
} 
array1 <- array(c(valueindex), dim = c(1, 18, 1), dimnames = list(rows, collumns))
print(array1)