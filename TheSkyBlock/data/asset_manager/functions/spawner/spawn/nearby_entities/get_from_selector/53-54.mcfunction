#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/53-54
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/53-56

execute if score $SpawnRange Temporary matches 530 as @e[scores={MobID=-2147483648..2147483647},distance=..53] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 540 as @e[scores={MobID=-2147483648..2147483647},distance=..54] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1