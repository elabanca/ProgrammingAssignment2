## Inverting Matrix

## Creates a special "matrix", contening fuctions to set and get 
## the value of the matrix and set and get the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
	x <<- y
	m <<- NULL
	}
	get <- function() x
	setsolve <- function(solve) m <<- solve
	getsolve <- function() m
	list(set=set, get=get,
		setsolve = setsolve,
		getsolve = getsolve)
}

## Checks if the matrix has already been inverted. If so, it 
## gets the already inverted matrix, if not it inverses the special matrix

cacheSolve <- function(x, ...) {
	m <- x$getsolve()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setsolve(m)
	m

        ## Return a matrix that is the inverse of 'x'
}

