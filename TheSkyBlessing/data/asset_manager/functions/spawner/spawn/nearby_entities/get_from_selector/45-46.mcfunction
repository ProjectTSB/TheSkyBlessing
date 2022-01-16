#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/45-46
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/45-48

execute if score $SpawnRange Temporary matches 450 as @e[scores={MobID=-2147483648..2147483647},distance=..45] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 460 as @e[scores={MobID=-2147483648..2147483647},distance=..46] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1