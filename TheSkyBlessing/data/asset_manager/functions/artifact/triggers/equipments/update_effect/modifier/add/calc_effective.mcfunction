#> asset_manager:artifact/triggers/equipments/update_effect/modifier/add/calc_effective
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/

#> Private
# @private
    #declare score_holder $Stack
    #declare score_holder $Amount
    #declare score_holder $MaxStack
    #declare score_holder $StackReduction

# 変数を取得
    execute store result score $Stack Temporary run data get storage asset:artifact Modifier.Stack
    execute store result score $Amount Temporary run data get storage asset:artifact Modifier.Amount 1000
    execute store result score $MaxStack Temporary run data get storage asset:artifact Modifier.MaxStack
    execute store result score $StackReduction Temporary run data get storage asset:artifact Modifier.StackReduction 1000
    execute if score $MaxStack Temporary matches 0 run scoreboard players set $MaxStack Temporary 9
# 計算
    scoreboard players operation $Stack Temporary < $MaxStack Temporary
    scoreboard players operation $Amount Temporary *= $Stack Temporary
    execute unless score $StackReduction Temporary matches 0 run scoreboard players remove $Stack Temporary 1
    execute unless score $StackReduction Temporary matches 0 run scoreboard players operation $StackReduction Temporary *= $Stack Temporary
    execute unless score $StackReduction Temporary matches 0 run scoreboard players operation $Amount Temporary -= $StackReduction Temporary
    execute store result storage asset:artifact Modifier.Amount double 0.001 run scoreboard players get $Amount Temporary
# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $Amount Temporary
    scoreboard players reset $MaxStack Temporary
    scoreboard players reset $StackReduction Temporary
