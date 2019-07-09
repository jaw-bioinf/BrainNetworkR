# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

hello <- function() {
  print("Hello, world!")
}
#### packages needed for install and reproducibility:
# igraph
# MODA
# NetRep
# WGCNA
# SimpleITK
# caret
# tispec functions
# ggplot2
# XGR
# ontologyIndex, etc
# and more stuff

library(WGCNA)
library(magrittr)
library(reticulate)
zipfile <- import("zipfile")
pyArr <- import("array")
zf = zipfile$ZipFile("/Users/j.williams/Desktop/Dummy/gridAnnotation.raw")

raw = zipfile.Zipfile('gridAnnotation.mhd')
arr = array.array('H',raw)

library(SimpleITK)
raw <- SimpleITK::ReadImage("/Users/j.williams/Desktop/Dummy/gridAnnotation.mhd") %>% SimpleITK::as.array(.) %>% as.vector()
raw2 <- SimpleITK::ReadImage("/Users/j.williams/Desktop/Dummy/gridAnnotation.mhd")
raw2 <- raw2 %>% SimpleITK::as.array()
scatterplot3d::scatterplot3d(raw2[1:67,,],raw2[,1:41,],raw2[,,1:58])

### yay plotitg workds
