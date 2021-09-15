#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/15-16
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/13-16

execute if score $SpawnRange Temporary matches 150 as @e[scores={MobID=-2147483648..2147483647},distance=..15] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 160 as @e[scores={MobID=-2147483648..2147483647},distance=..16] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1