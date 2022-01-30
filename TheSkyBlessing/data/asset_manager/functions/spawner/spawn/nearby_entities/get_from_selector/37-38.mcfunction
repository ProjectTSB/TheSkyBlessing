#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/37-38
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/37-40

execute if score $SpawnRange Temporary matches 370 as @e[scores={MobID=-2147483648..2147483647},distance=..37] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 380 as @e[scores={MobID=-2147483648..2147483647},distance=..38] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1