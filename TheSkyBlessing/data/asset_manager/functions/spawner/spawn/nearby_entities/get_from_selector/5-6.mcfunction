#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-6
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/5-8

execute if score $SpawnRange Temporary matches 50 as @e[scores={MobID=-2147483648..2147483647},distance=..5] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 60 as @e[scores={MobID=-2147483648..2147483647},distance=..6] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1