# CourseRA Assignment #2 - R Programming
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #cached value result
  
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
    get <- function() {
    x
  }
  
  # function to set the results cache
  setresult <- function(result) {
    inv <<- result
  }
  
  #funtion to get the cached results
  getresult <- function () {
    inv
  }
  
  list(set = set, get = get, setresult = setresult, getresult = getresult)
}

cacheSolve <- function(x, ...) {
  #access the cached result
  result <- x$getresult()
  
  #if the cached result is not NULL, return it
  if (!is.null(result)) {
    message("cached result")
    return(result)
  }
  
  matrix <- x$get()            
  invmatrix <- solve(matrix,...) 
  x$setresult(invmatrix)       
  invmatrix                   
}
