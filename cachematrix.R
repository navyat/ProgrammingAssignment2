
# The following functions makeCacheMatrix and cacahe solve will create a special "Matrix"
# and compute the inverse of the matrix. If the inverse has already been calculated before
# then it will retrive the inverse from the cache. 
# The matrix here is assumed to be a sqaure marix.

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
  
  setinverse <- function(inverse) inv <<- inverse # set function for the value of the inverse
  getinverse <- function() inv # gets the value of the inverse
  
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) # list of 4 functions
    
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
