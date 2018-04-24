library(CodeDepends)

rf = list.files(pattern = "\\.[Rr]$")
rf = rf[ rf != "genMake.R"]
info = lapply(rf, function(x) as(readScript(x), "ScriptInfo"))
names(info) = rf



lapply(info, function(x) unlist(sapply(x, slot, "files")))

lapply(info, getInputFiles)
lapply(info, getOutputFiles)



