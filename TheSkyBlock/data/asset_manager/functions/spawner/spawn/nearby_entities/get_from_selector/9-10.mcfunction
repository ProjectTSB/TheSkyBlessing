#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-10
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-12

execute if score $SpawnRange Temporary matches 90 as @e[scores={MobID=-2147483648..2147483647},distance=..9] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 100 as @e[scores={MobID=-2147483648..2147483647},distance=..10] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1