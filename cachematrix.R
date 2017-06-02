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

## Checking the program

m <- matrix(rnorm(16),4,4)
m1 <- makeCacheMatrix(m)
cacheSolve(m1)

[,1]       [,2]       [,3]       [,4]
[1,] -0.1653269  0.2592203  0.6176218 -0.7520955
[2,]  0.2828334 -0.1853499  0.4511382  0.2094365
[3,]  0.1434840  1.0413868 -0.3550853 -0.3261154
[4,]  0.1793583 -0.4252171 -0.4371493 -0.1749830


