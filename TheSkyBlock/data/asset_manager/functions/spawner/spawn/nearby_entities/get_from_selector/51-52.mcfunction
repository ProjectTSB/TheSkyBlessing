#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/51-52
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/49-52

execute if score $SpawnRange Temporary matches 510 as @e[scores={MobID=-2147483648..2147483647},distance=..51] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 520 as @e[scores={MobID=-2147483648..2147483647},distance=..52] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1