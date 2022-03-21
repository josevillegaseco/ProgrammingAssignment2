## Put comments here that give an overall description of what your
## functions do
###Comment
# The pair of functions: 
# (A) makeCacheMatrix : define object in R and store a matrix and its inverse.
# (B) cacheSolve : retrieve inverse if cached or calculate mean to be cached later.

## Write a short comment describing this function
###Comment
#(1) Initializing matrix x and its inverse
#(2) Defining setters and getters for objects of type makeCacheMatrix
#(3) Creating a list as final output that include all functions of makeCacheMatrix  
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL 
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv, 
       getinv = getinv)
}


## Write a short comment describing this function
###Comment
# (1) Function takes x returned by makeCacheMatrix
# (2) Retrieve cached inverse of x 
# (3) If inverse not cached then is calculated and cached 
cacheSolve <- function(x, ...) {
<<<<<<< HEAD
        ## Return a matrix that is the inverse of 'x'
}
## Put comments here that give an overall description of what your
## functions do
###Comment
# The pair of functions: 
# (A) makeCacheMatrix : define object in R and store a matrix and its inverse.
# (B) cacheSolve : retrieve inverse if cached or calculate mean to be cached later.

## Write a short comment describing this function
###Comment
#(1) Initializing matrix x and its inverse
#(2) Defining setters and getters for objects of type makeCacheMatrix
#(3) Creating a list as final output that include all functions of makeCacheMatrix  
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL 
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv, 
       getinv = getinv)
}


## Write a short comment describing this function
###Comment
# (1) Function takes x returned by makeCacheMatrix
# (2) Retrieve cached inverse of x 
# (3) If inverse not cached then is calculated and cached 
cacheSolve <- function(x, ...) {
=======
>>>>>>> 35d63df6952b075fa39cb48db57d97c51a755690
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if (!is.null(inv)){
    message("getting cached inverse")
    return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix,diag(sqrt(length(matrix))),...)
  x$setinv(inv)
  inv
}