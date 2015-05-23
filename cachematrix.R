## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function:
## This is the stupidest fucking shit I have ever done. It has nothing to do 
## with the lectures and will not help me in the future, but fuck it, here:
## The following function creates chaches a matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	
	set <- function(y) {
		x <<- y
		m <<- NULL
	}

	get <- function() { 
		x
	}
	
	setmatrix <- function(solve) {
		m <<- solve
	}
	
	getmatrix <- function() {
		m
	}
	
	list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}

## The following function retrieves the inverse matrix created by makeCacheMatrix

cacheSolve <- function(x=matrix(), ...) {

	m <- x$getmatrix()

	if(is.null(m)) {
		message("matrix is null!")
	} else {
		return(m)
	}

	matrix <- x$get()
	m <- solve(matrix, ...)
	x$setmatrix(m)
   
   return(m)
}
