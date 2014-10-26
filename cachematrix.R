<<<<<<< HEAD
##makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
=======
## Put comments here that give an overall description of what your
## functions do
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        set_matrix_inverse <- function(solve) m <<- solve
        get_matrix_inverse <- function() m
        list(set = set, get = get,
             set_matrix_inverse = set_matrix_inverse,
             get_matrix_inverse = get_matrix_inverse)
}



## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.



cacheSolve <- function(x, ...) {
        m <- x$get_matrix_inverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$set_matrix_inverse(m)
        m
}
=======

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
