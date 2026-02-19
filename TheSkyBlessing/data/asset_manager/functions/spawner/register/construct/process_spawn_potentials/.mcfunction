#> asset_manager:spawner/register/construct/process_spawn_potentials/
#
# SpawnPotentialsを正規化しWeightのSumを計算する
#
# @within function asset_manager:spawner/register/construct/set_data

#> type
# 0 -> int
# 1 -> int[]
# 2 -> { Id: int, Weight: int }[]
# @private
    #declare score_holder $Type

# 初期化
    scoreboard players set $SpawnPotentialsWeightSum Temporary 0
# 型判別
    scoreboard players set $Type Temporary 0
    execute if data storage asset:spawner SpawnPotentials[0] run scoreboard players add $Type Temporary 1
    execute if data storage asset:spawner SpawnPotentials[0].Id run scoreboard players add $Type Temporary 1
# 型に応じた処理をする
    execute if score $Type Temporary matches 0 run function asset_manager:spawner/register/construct/process_spawn_potentials/from_int/
    execute if score $Type Temporary matches 1 run function asset_manager:spawner/register/construct/process_spawn_potentials/from_int_list/
    execute if score $Type Temporary matches 2 run function asset_manager:spawner/register/construct/process_spawn_potentials/from_weighted_list/
# リセット
    scoreboard players reset $Type Temporary
