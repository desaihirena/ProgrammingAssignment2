## Put comments here that give an overall description of what your
## functions do

## This function returns a vector to manipulate matrix
## Following list contains
## get the matrix value 
## obtain the matrix value 
## get the inverse value of the matrix 
## obtain the inverse value of the matrix
makeCacheMatrix <- function(x = matrix()) {
        r <- NULL
        set <- function(y) {
            x <<- y
            r <<- NULL
        }
        get <- function() x
        setreverse <- function(mean) r <<- mean
        getreverse <- function() r
        list(set = set, get = get,
             setreverse = setreverse,
             getreverse = getreverse)
}


## Following function is used to calculate the special "matrix"
## Before the function starts its calculate it confirms the previous calculated inverse 
## The computation is skipped if the inverse is recieved from the previous function
## If not, the inverse in calculated to set the inverse value 
## Setinverse in finally obtained
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        r <- x$getreverse()
        if(!is.null(r)) {
            message("getting cached data")
            return(r)
        }
        data <- x$get()
        r <- solve(data, ...)
        x$setreverse(r)
        r
}
