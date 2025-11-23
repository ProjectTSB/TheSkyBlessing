#> metric:angel/death/put.m
# @input args
#   MobID : int
#   PlayerID : int
# @within function metric:angel/death/

#> Private
# @private
    #declare score_holder $MetricDeath

$execute store result score $MetricDeath Temporary run data get storage metric: Angel.$(MobID).Death.$(PlayerID)
$execute store result storage metric: Angel.$(MobID).Death.$(PlayerID) int 1 run scoreboard players add $MetricDeath Temporary 1
scoreboard players reset $MetricDeath Temporary
