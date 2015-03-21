## Slidify CI-Calculator_Presentation
library(slidify)
library(knitr)
setwd("./CI-Calculator/CI-Calculator/")
### for the cmd 'browseURL("index.html") which
### is the command line way to open the rendered
### silde file
author("CI-Calculator_Presentation")
## Compile the CI-Calculator_Presentation
slidify("index.Rmd")
## publish to an existing github repository with
publish_github(user="jshilling",
               repo= "CI-Calculator/gph-pages")