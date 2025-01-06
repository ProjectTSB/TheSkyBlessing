#> asset_manager:spawner/register/construct/process_spawn_potentials/from_int/
#
# SpawnPotentialsを正規化しWeightのSumを計算する
#
# @within function asset_manager:spawner/register/construct/process_spawn_potentials/

scoreboard players set $SpawnPotentialsWeightSum Temporary 1
data modify storage asset:spawner NormalizedSpawnPotentials set value [{Id:-1,Weight:1}]
data modify storage asset:spawner NormalizedSpawnPotentials[0].Id set from storage asset:spawner SpawnPotentials
