#> asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/
#
# SpawnPotentialsを正規化しWeightのSumを計算する
#
# @within function asset_manager:spawner/register/construct/process_spawn_potentials/

execute store result score $SpawnPotentialsWeightSum Temporary if data storage asset:spawner SpawnPotentials[]
data modify storage asset:spawner NormalizedSpawnPotentials set value []
function asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/for_each
