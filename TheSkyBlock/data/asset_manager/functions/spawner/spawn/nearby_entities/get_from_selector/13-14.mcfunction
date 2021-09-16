#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-14
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-16

execute if score $SpawnRange Temporary matches 130 as @e[scores={MobID=-2147483648..2147483647},distance=..13] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 140 as @e[scores={MobID=-2147483648..2147483647},distance=..14] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1