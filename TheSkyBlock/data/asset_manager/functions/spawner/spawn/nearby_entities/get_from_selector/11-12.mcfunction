#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/11-12
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/9-12

execute if score $SpawnRange Temporary matches 110 as @e[scores={MobID=-2147483648..2147483647},distance=..11] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 120 as @e[scores={MobID=-2147483648..2147483647},distance=..12] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1