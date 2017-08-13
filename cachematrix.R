## Put comments here that give an overall description of what your

## functions do


## Write a short comment describing this function


makeCacheMatrix <- function(x = matrix()){
## This function creates a special "matrix" object that can cache its inverse
## define the argument with default mode of "matrix"

invs <- NULL
## initialize inv as NULL; will hold value of matrix inverse 

set <- function(y) {
## define the set function to assign new

x <<- y
## value of matrix in parent environment

invs <<- NULL
## if there is a new matrix, reset inv to NULL

}


get <- function() x
## define the get fucntion - returns value of the matrix argument

setinverse <- function(inverse) 
invs <<- inverse  
## assigns value of inv in parent environment

getinverse <- function() invs
## gets the value of inv where called

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  
## this is needed in order to refer to the functions with the $ operator





## Write a short comment describing this function



## This function computes the inverse of the special "matrix" returned by makeCacheMatrix.
## If the inverse has already been calculated (and the matrix has not changed),
## then cacheSolve will retrieve the inverse from the cache


cacheSolve <- function(x, ...) {
        
## Return a matrix that is the inverse of 'x'

invs <- x$getinverse()
if(!is.null(invs)) {
message("Getting cached data!")
return(invs)
}
data <- x$get()
invs <- solve(data, ...)
x$setinverse(invs)invs


 }

