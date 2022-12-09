## Week 3 Assignment by Elisia Hamm

## Caching allows a user to quickly store and retrieve data. The following functions involve caching matrices.

## The function makeCacheMatrix() creates a special "matrix". The function contained therein:

##    1. Sets the value of the matrix

##    2. Gets the value of the matrix

##    3. Sets the value of the inverse

##    4. Gets the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) a <<- inverse
  getinverse <- function() a
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Run the above function.

## The function cacheSolve() calculates the inverse of the "special" matrix created above. The solve() function is
## utilized to calculate the inverse of the matrix.Run the following function:

cacheSolve <- function(x, ...) {
  a <- x$getinverse()
  if(!is.null(a)) {
    message("getting cached data")
    return(a)
  }
  data <- x$get()
  a <- solve(data, ...)
  x$setinverse(a)
  a
}
