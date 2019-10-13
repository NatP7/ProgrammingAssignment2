## Programming Assignment2
## Functions calculate inverse of a matrix and store its value in the cache to reduse calculation load

## Placeholder for setters and getters functions

makeCacheMatrix <- function(x = matrix()) {
  inv_mtx <- NULL
  
  set <- function(y) {
    x <<- y
    inv_mtx <<- NULL
  }
  get <- function() x
  
  set_inverse_mtx <- function(inverse) inv_mtx <<- inverse
  get_inverse_mtx <- function() inv_mtx
  
  list(set = set,get = get,set_inverse_mtx = set_inverse_mtx,get_inverse_mtx = get_inverse_mtx)
}


## Calculator/retriever for inverse matrix

cacheSolve <- function(x, ...) {
  inv_mtx <- x$get_inverse_mtx()
  if(!is.null(inv_mtx)) {
    message("getting cached data")
    return(inv_mtx)
  }
  matrix <- x$get()
  inv_mtx <- solve(matrix)
  x$set_inverse_mtx(inv_mtx)
  inv_mtx
  }
