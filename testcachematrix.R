## test
source("cachematrix.R")
mm<-matrix(runif(16),4,4)#random matrix

x<-makeCacheMatrix(mm)

x$get()

x$getMatrixInv()


cacheSolve(x)

x$getMatrixInv()