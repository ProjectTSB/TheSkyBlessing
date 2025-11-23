#> metric:angel/damage/put.m
# @input args
#   MobID : int
#   PlayerID : int
# @within function metric:angel/damage/

$execute store result score $MetricDamage Temporary run data get storage metric: Angel.$(MobID).Damage.$(PlayerID) 100
$execute store result storage metric: Angel.$(MobID).Damage.$(PlayerID) double 0.01 run scoreboard players operation $MetricDamage Temporary += $Damage Temporary
scoreboard players reset $MetricDamage Temporary
