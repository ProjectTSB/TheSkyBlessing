#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/19-20
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/17-20

execute if score $SpawnRange Temporary matches 190 as @e[scores={MobID=-2147483648..2147483647},distance=..19] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 200 as @e[scores={MobID=-2147483648..2147483647},distance=..20] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1