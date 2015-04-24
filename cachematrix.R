## For Coursera Course "R Programming", this is assignment 2
## One function will make a matrix that can cache its inverse.
## The other function will compute the inverse by either solving
## or retrieving the cached solution if it already exists.

## makeCacheMatrix will make a matrix and cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
        x <<- y
        m <<- NULL
        }
        get <- function() x
        setmatrix <- function(solve) m <<- solve
        getmatrix <- function() m
        list(set=set, get=get, setmatrix=setmatrix,
             getmatrix=getmatrix)
}


## cacheSolve will retrieve the cached solution or solve the inverse if 
## it doesn't exist.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getmatrix()
        if (!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        matrix <- x$get()
        m <- solve(matrix, ...)
        x$setmatrix(m)
        m
        
}
