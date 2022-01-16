#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/57-58
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/57-60

execute if score $SpawnRange Temporary matches 570 as @e[scores={MobID=-2147483648..2147483647},distance=..57] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 580 as @e[scores={MobID=-2147483648..2147483647},distance=..58] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1