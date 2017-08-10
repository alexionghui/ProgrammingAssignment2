## This second programming assignment.
## This assignment is about Caching the Inverse of a Matrix  cache potentially time-consuming computations
## The goal of this assignment is to practice Lexical Scoping, and using operator "<<-".

## Function makeCacheMatrix creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
      matrixInvCache <- NULL
      set <- function(y) {
            x <<- y
            matrixInvCache <<- NULL
      }
      get <- function() x
      setMatrixInv <- function(matrixInv) matrixInvCache <<- matrixInv
      getMatrixInv <- function() matrixInvCache
      list(set = set, get = get,
           setMatrixInv = setMatrixInv,
           getMatrixInv = getMatrixInv)
}


## This function computes the inverse of the special "matrix" 
## returned by makeCacheMatrix above. If the inverse has already
## been calculated (and the matrix has not changed), then the 
## cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      matrixInv <- x$getMatrixInv()
      if(!is.null(matrixInv)) {
            message("getting cached data")
            return(matrixInv)
      }
      data <- x$get()
      matrixInv <- solve(data,...)
      x$setMatrixInv(matrixInv)
      matrixInv
}
