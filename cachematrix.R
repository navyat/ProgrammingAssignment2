
# The following functions makeCacheMatrix and cacahe solve will create a special "Matrix"
# and compute the inverse of the matrix. If the inverse has already been calculated before
# then it will retrive the inverse from the cache. 


# The makeCacheMatrix creates a "matrix",  that is a list contaning to 
# 1. Set the value of the matrix, 2. Get the value of the matrix, 
# 3. Set the value of the inverse & 4. Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

  inv <- NULL # inv is the variable for inverse
  set <- function(y) { # set function to set the value of the matrix
    x <<- y # <<- used to assign a value to an object, in this case assign the value of y to x
    inv <<- NULL 
  }
  
  get <- function() x # x is the body of the function (get the value of matrix)
  
  setinverse <- function(solve) inv <<- solve # set function for the value of the inverse
  getinverse <- function() inv # gets the value of the inverse
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) # list of 4 functions
    
}

# The function cacheSolve computes the inverse of the special matrix (the matrix is a square matrix)
# if the inverse has been calculated before it will retrive from cache otherwise it will calculate the inverse of the matrix.

cacheSolve <- function(x, ...) {
        
    inv <- x$getinverse()
    if(!is.null(inv)){ # checks if the inverse has already been calculated
      message("getting cached data")
      return(inv) # print the value of the inverse
    }
  
    data <- x$get()
    inv <- solve(data, ...) #solve the inverse
    x$setinverse(inv) # set the inverse
    inv 
  ## Return a matrix that is the inverse of 'x'
}
