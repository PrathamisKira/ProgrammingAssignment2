## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  cc <- NULL
  set <- function(y){
    x <<- y
    cc <<- NULL
  }
  get <- function() x
  setinv <- function(solve) cc <<- solve()
  getinv <- function() cc
  list(set = set,
       get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  cc <- x$getinv()
  if(!is.null(cc)) {
    message("getting cached data")
    return(cc)
  }
  matr <- x$get()
  cc <- solve(matr,...)
  x$setinv(cc)
  cc
  
}
