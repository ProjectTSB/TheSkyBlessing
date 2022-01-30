#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-18
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-20

execute if score $SpawnRange Temporary matches 170 as @e[scores={MobID=-2147483648..2147483647},distance=..17] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 180 as @e[scores={MobID=-2147483648..2147483647},distance=..18] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1