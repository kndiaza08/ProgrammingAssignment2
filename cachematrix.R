## Creación de la matriz en cache

makeCacheMatrix <- function(x = matrix()) {
require("MASS")
      mat_inv <- NULL
      set <- function(y) {
      x <<- y
      mat_inv <<- NULL
    }
    get <- function() x
    setinverse <- function(ginv) mat_inv <<- ginv
    getinverse <- function() mat_inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse

}


##Solucion de la matriz

cacheSolve <- function(x, ...) {
              require("MASS")
        mat_inv <- x$getinverse()
        require("MASS") 
        mat_inv <- x$getinverse() 
          if(!is.null(mat_inv)) {
            message("getting cached data")
            return(mat_inv)}
}
