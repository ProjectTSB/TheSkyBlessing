#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/23-24
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-24

execute if score $SpawnRange Temporary matches 230 as @e[scores={MobID=-2147483648..2147483647},distance=..23] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 240 as @e[scores={MobID=-2147483648..2147483647},distance=..24] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1