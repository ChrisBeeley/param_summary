
source("functions.R")

param_2 <- jsonlite::fromJSON("secret/rgn-hh20240202core-3162fb16.json")

# str(param_2$params$reasons$activity_avoidance$ip, max.level = 1)
#
# param_2$params$reasons$activity_avoidance$ip

make_params(param_2$params$activity_avoidance$ip)

write.csv(
  make_params(param_2$params$activity_avoidance$ip),
  file = "ip.csv", row.names = FALSE)

write.csv(
  make_params(param_2$params$activity_avoidance$op),
  file = "op.csv", row.names = FALSE)

write.csv(
  make_params(param_2$params$activity_avoidance$aae),
  file = "aae.csv", row.names = FALSE)


