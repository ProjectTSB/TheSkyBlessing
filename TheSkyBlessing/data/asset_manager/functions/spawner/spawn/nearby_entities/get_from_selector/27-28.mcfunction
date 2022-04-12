#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/27-28
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/25-28

execute if score $SpawnRange Temporary matches 270 as @e[scores={MobID=-2147483648..2147483647},distance=..27] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 280 as @e[scores={MobID=-2147483648..2147483647},distance=..28] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1