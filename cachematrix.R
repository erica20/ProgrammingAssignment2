## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Creating a matrix that will catch its inverse and store the original matrix and the cache value

makeCacheMatrix <- function(x = matrix())

## Inverse cache value gets set to NUll when makeCacheMatrix is called
   
{ i <-NULL  
  
  set<- function(matrix)
  {x<<- matrix
   i <<- NULL
  }
  
  get <- function()  x ## Returns the original makeCacheMatrix
  setInverse <- function(inverse) i <<- inverse # Function that will set the inverse matrix
  getInverse <- function() i   # Function that will get the inverse matrix
  
  ## Returning the list of both methods used
  list (set = set, get = get,
  setInverse=setInverse,
  getInverse=getInverse)
  }


## Write a short comment describing this function

## Creating a function called cacheSolve that will compute the inverse of the makeCacheMatrix
  cacheSolve <- function(x=matrix(), ...) 
  ## Returning the inverse i of the matrix x
  {
  i <- x$getInverse()
  
  ## Will return the inverse
  if(!is.null(i)) {
  return(i)
  }
  ## Getting matrix 
  
  data <- x$get()
  
  ## Calculating inverse for data matrix
  i <- solve(data)
  
  ## Setting inverse to matrix x
  x$setInverse(i)
  i
}
