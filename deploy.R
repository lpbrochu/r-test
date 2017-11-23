# install.packages("rsconnect")
# install.packages("devtools")
library("rsconnect")
library("devtools")

pkg_repo <- "lpbrochu/shiny-sample"
pkg_name <- "shinysample"
pkg_version <- "1.0.0"
pkg_version_display <- "1_0_0"


deploy_app <- function(appName){
    rsconnect::setAccountInfo(name = "lpbrochu", token = "4808194A85A61399E2106BB9C4CC1EB7", secret = "b9Akzq1/nwA4+u5SwOpa0NWXpH11s5DVLKoS7gpn")
    pkg_dir <- system.file(package=pkg_name)
    full_app_name <- paste(pkg_name, pkg_version_display, sep="")
    print(full_app_name)
    rsconnect::deployApp(appName=full_app_name, appDir=pkg_dir)
}

install_app <- function(repo, version) {
    install_github(repo = repo, version = version, quiet = TRUE, force=TRUE)
}

tmp_repo <- paste(pkg_repo, "/", pkg_name, sep="")
print(tmp_repo)
install_app(tmp_repo, pkg_version)
deploy_app(pkg_name)
