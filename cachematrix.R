## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
                  m <- NULL
                  set <- function(y){
                  x <<- y
                  m <<- NULL
                  }
                  get <- function() solve(x)
                  setmatrix <- function(get) m <<- solve(x)
  getmatrix <- function() m
  list(set = set, get = get,
       setmatrix = setmatrix,
       getmatrix = getmatrix)
}
## Write a short comment describing this function

cacheSolve <- function(x, ...) {
             m <- x$setmatrix()
                     if(!is.null(m)){
                     message("getting cached cacheSolve")
                     return(m)
                     }
                          cacheSolve <- x$get()
                          m <- solve(cacheSolve, ...)
                          x$setmatrix(m)
                          m
  ## Return a matrix that is the inverse of 'x'
}
