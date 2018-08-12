## Put comments here that give an overall description of what your
## functions do
## these functions give a matrix object which caches its inverse
## function get() and set() help to get and set the value of the
## original matrix 
## cacheSolve() helps to get the inverse

## Write a short comment describing this function
## this function creates a matrix object which caches its onw inverse
makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
## this function gets the value of the matrix	
    get <- function () x
## this function sets the value of the inverse	
    setInverse <- function(inverse) i <<- inverse
## this function gets the value of the inverse	
    getInverse <- function() i
    list(set = set, 
    	 get = get, 
    	 setInverse = setInverse,
    	 getInverse = getInverse)
}


## Write a short comment describing this function
## this function computes the inverse of the special 
## inverse matrix returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
        i <- x$getInverse()
## if the cache is not empty, we can just return the matrix
        if(!is.null(i)){
        	message("getting cached data")
        	return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setInverse(i)
        i
}

