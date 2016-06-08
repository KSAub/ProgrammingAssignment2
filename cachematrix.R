## makeCacheMatrix -> creates a wrapper around a matrix that allows its inverse 
# to be stored, effectively a list that contans the following functions:
# - setx: allows to overwrite the matrix and will reset the inverse
# - getx: returns the matrix x
# - setinvmat: sets the inverted matrix, if so desired
# - getinvmat: returns the inverted matrix

 
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    setx <- function(y){
        x <<-y
        inv <<- NULL
    }
    getx <- function() x
    setinvmat <- function(myinvmat) inv <<- myinvmat
    getinvmat <- function() inv
    list(setx = setx, getx = getx, setinvmat = setinvmat, getinvmat = getinvmat)
}       

## cacheSolve -> takes the matrix from makeCacheMatrix and returns its inverse 
# matrix. First checks whether its already cached in the makeCacheMatrix, if so,
# shows the message and returns it.
# Else, it calculates the inverse matrix, and caches it.
cacheSolve <- function(x, ...) {
    invmat <- x$getinvmat()
    if(!is.null(invmat)){
        message("getting cached data")
        return(invmat)
    } 
    mat <- x$getx()
    invmat <- solve(mat)
    x$setinvmat(invmat)
    invmat
}
    