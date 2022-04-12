#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/31-32
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/29-32

execute if score $SpawnRange Temporary matches 310 as @e[scores={MobID=-2147483648..2147483647},distance=..31] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 320 as @e[scores={MobID=-2147483648..2147483647},distance=..32] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1