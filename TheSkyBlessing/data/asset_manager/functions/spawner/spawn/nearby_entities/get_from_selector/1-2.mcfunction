#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-2
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/1-4

execute if score $SpawnRange Temporary matches 10 as @e[scores={MobID=-2147483648..2147483647},distance=..1] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 20 as @e[scores={MobID=-2147483648..2147483647},distance=..2] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1