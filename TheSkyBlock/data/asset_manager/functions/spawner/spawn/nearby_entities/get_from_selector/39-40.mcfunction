#> asset_manager:spawner/spawn/nearby_entities/get_from_selector/39-40
#
# SpawnRangeの範囲内のMobIDが一致するEntity数を取得する
#
# @within function asset_manager:spawner/spawn/nearby_entities/get_from_selector/37-40

execute if score $SpawnRange Temporary matches 390 as @e[scores={MobID=-2147483648..2147483647},distance=..39] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1
execute if score $SpawnRange Temporary matches 400 as @e[scores={MobID=-2147483648..2147483647},distance=..40] if score @s MobID = $MobID Temporary run scoreboard players add $NearbyEntities Temporary 1