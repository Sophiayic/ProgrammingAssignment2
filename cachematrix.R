## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##Set value of vector then get value of vector. Set value of inverse then get value of inverse. This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
    x<<-y
    m<<-NULL
  }
  get<-function() x
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}




## Write a short comment describing this function
##It computes the inverse based on the previous function, if not we use the inverse matrix of x.

cacheSolve <- function(x, ...) {
  m<-x$getmatrix()
  if(!is.null(m)){
    message("Getting cached data")
    return(m)
  }
  matrix<-x$get()
  m<-solve(matrix, ...)
  x$setmatrix(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
