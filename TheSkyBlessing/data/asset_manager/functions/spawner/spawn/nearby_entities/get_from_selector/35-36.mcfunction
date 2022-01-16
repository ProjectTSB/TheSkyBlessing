#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/35-36
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/33-36

execute if score $SpawnRange Temporary matches 350 as @e[scores={MobID=-2147483648..2147483647},distance=..35] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 360 as @e[scores={MobID=-2147483648..2147483647},distance=..36] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1