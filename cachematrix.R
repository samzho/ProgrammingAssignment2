## Put comments here that give an overall description of what your
## functions do
## R Programming: Week 3 Programming Assignment by Sam Zhou

## Write a short comment describing this function
## This functions creates a special "matric" object that can cache its inverse 

makeCacheMatrix <- function(x = matrix()) { ## matrix as input
  inv <- NULL
  ## set value of matrix 
  set <- function(y)  {
    x <<- y
    inv <<- NULL
  }
  
  #asd
  get <- function(x) ## get value of matrix
    setInv <- function(inverse) inv <<- inverse ## set value of inverse matrix
  getInv <- function() inv ## get value of inverse matrix 
  list(set=set, get=get, setInv=setInvm, getInv=getInv)
}


## Write a short comment describing this function
## This function coputes the inverese of the special matrix returned by makeCacheMatrix above. 
## If the inverese has already been calcualted and the matrix has not changed,
## Then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inv = x$getInv()
  
  ## if inverse matrix is not NULL
  if(!is.null(inv)) {
    message("getting cache data") ## print this line 
    return(inv) ## returns inverse matrix 
  } 
  ## else, calculate function below
  matrix_data = x$get()
  inv = solve(matrix_data, ...)
  
  x$setInv(inv)
  
  return(inv)
}