#> metric:shard.m
#
# シャードの開封数を記録する
#
# @input args
#   Rarity: int
#   Color: int
# @within function world_manager:gimmick/shard_processor/process/complete

#> Private
# @private
#declare score_holder $Count

scoreboard players set $Count Temporary 0
$execute store result score $Count Temporary run data get storage metric: Shard.$(Color).$(Rarity)
$execute store result storage metric: Shard.$(Color).$(Rarity) int 1 run scoreboard players add $Count Temporary 1
scoreboard players reset $Count Temporary
