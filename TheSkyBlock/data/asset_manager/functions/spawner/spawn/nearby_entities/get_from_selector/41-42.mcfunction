#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/41-42
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/41-44

execute if score $SpawnRange Temporary matches 410 as @e[scores={MobID=-2147483648..2147483647},distance=..41] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 420 as @e[scores={MobID=-2147483648..2147483647},distance=..42] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1