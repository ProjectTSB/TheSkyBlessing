#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-22
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/21-24

execute if score $SpawnRange Temporary matches 210 as @e[scores={MobID=-2147483648..2147483647},distance=..21] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 220 as @e[scores={MobID=-2147483648..2147483647},distance=..22] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1