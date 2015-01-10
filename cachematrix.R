## Put comments here that give an overall description of what your
## functions do

## Analoguous to the example, a vector is created which sets the value, gets the value, sets the inverse value and gets the inverse value:

makeCacheMatrix <- function(x = matrix()) {
  x_inv <- NULL 
  set <- function(y) {
    x <<- mm
    x_inv <<- NULL    
  }
  get <- function() {
    x
  }
  setinverse <- function(inv) {
    x_inv <<- inv
  }
  getinverse <- function(){
    x_inv  
  } 
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## To calculate the inverse of the matrix I have used the solve() function. When this is called with just a square matrix it will calculate the inverse 
## of this matrix. For the rest this function is analoguous to the example.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  x_inv <- x$getinverse()
  if(!is.null(x_inv)) {
    message("getting cached data")
    return(x_inv)
  }
  data <- x$get()
  x_inv <- solve(data)
  x$setinv(x_inv)
  x_inv
}
