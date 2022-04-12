#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/63-64
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/61-64

execute if score $SpawnRange Temporary matches 630 as @e[scores={MobID=-2147483648..2147483647},distance=..63] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 640 as @e[scores={MobID=-2147483648..2147483647},distance=..64] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1