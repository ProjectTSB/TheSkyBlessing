#> asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/for_each
#
#
#
# @within function asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/*

# Weightは1で正規化する
    data modify storage asset:spawner NormalizedSpawnPotentials append value {Id:-1,Weight:1}
    data modify storage asset:spawner NormalizedSpawnPotentials[-1].Id set from storage asset:spawner SpawnPotentials[-1]
# 要素がまだあったら再帰する
    data remove storage asset:spawner SpawnPotentials[-1]
    execute if data storage asset:spawner SpawnPotentials[-1] run function asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/for_each
