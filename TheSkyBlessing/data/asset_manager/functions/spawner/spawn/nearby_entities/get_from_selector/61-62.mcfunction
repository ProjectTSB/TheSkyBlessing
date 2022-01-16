#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-62
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-64

execute if score $SpawnRange Temporary matches 610 as @e[scores={MobID=-2147483648..2147483647},distance=..61] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 620 as @e[scores={MobID=-2147483648..2147483647},distance=..62] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1