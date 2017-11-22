library("devtools")
library("plumber")
library("rsconnect")

#* @get /mean
normalMean <- function(samples=10){
    data <- rnorm(samples)
    mean(data)
}

#* @post /sum
addTwo <- function(a, b){
    as.numeric(a) + as.numeric(b)
}

#* @get /deploy
deploy <- function() {
    r <- getOption("repos")
    r["CRAN"] <- "http://cran.cnr.berkeley.edu/"
    options(repos = r)

    install_github("dbrrt/r-plumber-example")


}

deploy()