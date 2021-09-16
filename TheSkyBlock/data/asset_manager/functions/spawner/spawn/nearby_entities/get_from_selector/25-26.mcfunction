#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-26
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-28

execute if score $SpawnRange Temporary matches 250 as @e[scores={MobID=-2147483648..2147483647},distance=..25] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 260 as @e[scores={MobID=-2147483648..2147483647},distance=..26] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1