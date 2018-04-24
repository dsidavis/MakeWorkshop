setGeneric("getInputFiles",
           function(x, ...)
              standardGeneric("getInputFiles"))


setMethod("getInputFiles",     "ScriptInfo",
          function(x, ...) {
              unlist(lapply(x, getInputFiles))
          })


setMethod("getInputFiles",     "ScriptNodeInfo",
          function(x, ...) {
              if(length(x@files)) {
                  if(any(w <- isInputFile(x@code, x@files)))
                      return(x@files[w])
              }

              character()
          })


OutputFnctions = c("png", "pdf", "jpeg", "write.csv", "dir.create")

isInputFile =
function(expr, filenames)
{

    if(is.call(expr)) # no assignment, so probably just output.
       return( rep(FALSE, length(filenames)))


    

    
}

# write.csv(d, file("bob", "w"))
  

isOutputFile =
function(expr, filenames)
{
    if(class(expr) %in% c("<-", "=")) {

    }

        
}
