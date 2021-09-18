#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/47-48
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/45-48

execute if score $SpawnRange Temporary matches 470 as @e[scores={MobID=-2147483648..2147483647},distance=..47] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 480 as @e[scores={MobID=-2147483648..2147483647},distance=..48] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1