## Our Objetive in this assignment is to write two functions with the name of
## "makeCacheMatrix" and cacheSolve" that cache the matrix inverse

## Function which creates the special "matrix" object that can cache its inverse for the input (invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y) {
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inverse) inv <<- inverse
	getinv <- funtion() inv
	list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## ccheSolve computes the inverse of the special "matrix" gave by makeCacheMatrix above. If the calculation is done, then the cacheSolve should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
        	message("getting cached result")
        	return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}

