#> metric:angel/death/put.m
# @input args
#   MobID : int
#   PlayerID : int
# @within function metric:angel/death/

$execute store result score $MetricDeath Temporary run data get storage metric: Angel.$(MobID).Death.$(PlayerID)
$execute store result storage metric: Angel.$(MobID).Death.$(PlayerID) double 0.01 run scoreboard players add $MetricDeath Temporary 1
scoreboard players reset $MetricDeath Temporary
