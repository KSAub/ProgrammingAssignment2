## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# z = generate x random numbers for matrix 
# y = take square root of numbers to be able to generate a square, invertible matrix
makeCacheMatrix <- function(x = matrix()) {
    #z <- runif(x) 
    z <- sample(1:100, x)  
    y <- sqrt(length(z)) 
    mymat <- function(){
        mtx <- matrix(z,nrow = y, ncol = y)
        mymatcache <- return(mtx)
    }
    setinvmat <- solve(mymat())
    getinvmat <- function() setinvmat
    list(mymat = mymat, setinvmat = setinvmat, getinvmat = getinvmat)
} 



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    #invmat <- x$getinversemat()
    #if(!is.null(invmat)){
        #message("getting cached data")
        #return(invmat)
    }
    
    ## Return a matrix that is the inverse of 'x'
}
