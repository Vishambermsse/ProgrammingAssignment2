## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL   ## initialize inv as NULL; will hold value of matrix 
  setMatrix <- function(y) {  ## define the set function to assign new
    x <<- y  ## value of matrix in parent environment
    invMatrix <<- NULL ## if there is a new matrix, reset inv to NULL
  }
    getMatrix <- function() x ## define the get fucntion - returns value of the matrix argument
    setInverse <- function(inverse) invMatrix <<- inverse  ## assigns value of inv in parent 
    getInverse <- function() invMatrix
    list(setMatrix = setMatrix, getMatrix = getMatrix,setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...){
        ## Return a matrix that is the inverse of 'x'
  invMatrix <- x$getInverse()
  if(!is.null(invMatrix)) {  
    message("Getting Cached Invertible Matrix")
    return(invMatrix)
}
  MatrixData <- x$getMatrix()
  invMatrix <- solve(MatrixData, ...)
  x$setInverse(invMatrix)
  return(invMatrix)
}
