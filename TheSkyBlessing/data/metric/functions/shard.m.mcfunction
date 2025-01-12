#> metric:shard.m
#
# シャードの開封数を記録する
#
# @input args Rarity : int
# @within function world_manager:gimmick/shard_processor/process/complete

$execute if data storage api: Argument{Rarity:$(Rarity)} store result score $Count Temporary run data get storage metric: Shard.$(Rarity)
$execute store result storage metric: Shard.$(Rarity) int 1 run scoreboard players add $Count Temporary 1
scoreboard players reset $Count Temporary
