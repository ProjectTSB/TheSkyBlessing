#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/43-44
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/41-44

execute if score $SpawnRange Temporary matches 430 as @e[scores={MobID=-2147483648..2147483647},distance=..43] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 440 as @e[scores={MobID=-2147483648..2147483647},distance=..44] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1