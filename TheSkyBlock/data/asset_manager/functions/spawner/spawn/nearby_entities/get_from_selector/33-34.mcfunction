#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/33-34
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/33-36

execute if score $SpawnRange Temporary matches 330 as @e[scores={MobID=-2147483648..2147483647},distance=..33] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 340 as @e[scores={MobID=-2147483648..2147483647},distance=..34] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1