## Function to cache the inverse of a matrix
## Following function creates special "matrix" object to cache the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
        m < - NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse)
                getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse
             getinverse = getinverse)
}


## Following function returns calculation from above function

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
        ## Return a matrix that is the inverse of 'x'
}
