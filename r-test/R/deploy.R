library("plumber")
library("rsconnect")

test <- deploy_test_app(){
  rsconnect::setAccountInfo(name='lpbrochu', token='4808194A85A61399E2106BB9C4CC1EB7', secret='b9Akzq1/nwA4+u5SwOpa0NWXpH11s5DVLKoS7gpn')
  rsconnect::deployAPI("r-test-plumber")
}
