makeCacheMatrix <- function(mat = matrix()) {
    inv <- NULL
    
    set <- function(y){
        mat <<- y
        inv <<- NULL
    }
      get <- function() mat
    setinv <- function(inverse) inv <<- inverse
    getinv <- function() inv
    list(set=set,
         get=get,
         setinv=setinv,
         getinv = getinv)
}

cacheSolve <- function(mat, ...){
    inv <- mat$getinv()
    
    if(!is.na(inv)) {
        message("getting cached inverse")
        return (inv)
    }
    data<- mat$get()
    inv <- solve(data, ...)
    x$setinv(inv)
    inv
    
    
}
    