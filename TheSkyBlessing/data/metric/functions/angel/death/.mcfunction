#> metric:angel/death
#
# 対天使での被ダメージ量を記録する
#
# @within function lib:score_to_health_wrapper/core/die

execute store result storage metric: Args.MobID int 1 run scoreboard players get @e[type=#lib:living_without_player,tag=Enemy.Boss,distance=..100,limit=1] MobID
execute store result storage metric: Args.PlayerID int 1 run scoreboard players get @s UserID
function metric:angel/death/put.m with storage metric: Args
data remove storage metric: Args
