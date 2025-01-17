#> asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/for_each
#
# 再帰的にSpawnPotentialsのWeightの合計を計算します
#
# @within function asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/*

# Weightを取得して加算
    execute store result score $Weight Temporary run data get storage asset:spawner SpawnPotentials[-1].Weight
    scoreboard players operation $SpawnPotentialsWeightSum Temporary += $Weight Temporary
# リセット
    scoreboard players reset $Weight Temporary
# 要素がまだあったら再帰する
    data remove storage asset:spawner SpawnPotentials[-1]
    execute if data storage asset:spawner SpawnPotentials[-1] run function asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/for_each
