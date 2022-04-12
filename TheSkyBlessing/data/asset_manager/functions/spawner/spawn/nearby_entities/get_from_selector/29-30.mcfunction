#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-30
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-32

execute if score $SpawnRange Temporary matches 290 as @e[scores={MobID=-2147483648..2147483647},distance=..29] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 300 as @e[scores={MobID=-2147483648..2147483647},distance=..30] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1