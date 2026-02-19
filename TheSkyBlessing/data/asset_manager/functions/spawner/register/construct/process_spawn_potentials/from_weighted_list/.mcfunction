#> asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/
#
# SpawnPotentialsを正規化しWeightのSumを計算する
#
# @within function asset_manager:spawner/register/construct/process_spawn_potentials/

scoreboard players set $SpawnPotentialsWeightSum Temporary 0
data modify storage asset:spawner NormalizedSpawnPotentials set from storage asset:spawner SpawnPotentials
function asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/for_each
