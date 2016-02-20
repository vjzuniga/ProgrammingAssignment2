## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix() ) {
        MInversa  <- NULL
        set <- function(y) {
                x <<- y
                MInversa  <<- NULL
        }
        get <- function() x
        setMInversa <- function(solve) MInversa <<- solve
        getMInversa <- function() MInversa
        list(set = set, get = get,
             setMInversa = setMInversa,
             getMInversa = getMInversa)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        MInversa <- x$getMInversa()
        if(!is.null(MInversa)) {
                message("getting cached data")
                return(MInversa)
        }
        data <- x$get()
       MInversa<- solve(data, ...)
        x$setMInversa(MInversa)
        MInversa
}