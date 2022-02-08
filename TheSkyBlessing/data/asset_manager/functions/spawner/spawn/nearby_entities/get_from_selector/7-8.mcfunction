#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/7-8
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-8

execute if score $SpawnRange Temporary matches 70 as @e[scores={MobID=-2147483648..2147483647},distance=..7] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 80 as @e[scores={MobID=-2147483648..2147483647},distance=..8] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1