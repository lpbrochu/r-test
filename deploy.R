install.packages("rsconnect")
install.packages("devtools")
library("rsconnect")
library("devtools")



deploy_app <- function(){
    rsconnect::setAccountInfo(name = "lpbrochu", token = "4808194A85A61399E2106BB9C4CC1EB7", secret = "b9Akzq1/nwA4+u5SwOpa0NWXpH11s5DVLKoS7gpn")
    rsconnect::deployAPI("r-test-plumber")
}

install_app <- function(repo, version) {
    install_github(repo = repo, version = version)
}

install_app("lobrochu/shiny-sample/shinysample", "1.0.0")
#deploy_app()
