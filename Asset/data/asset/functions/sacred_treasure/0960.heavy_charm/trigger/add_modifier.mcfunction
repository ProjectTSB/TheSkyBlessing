#> asset:sacred_treasure/0960.heavy_charm/trigger/add_modifier
#
# 補正追加
#
# @within function asset:sacred_treasure/0960.heavy_charm/trigger/**main

#> 個数
# @private
#declare score_holder $Count

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 0-8-2-8-39549000000
    data modify storage api: Argument.UUID set value [I;1,1,960,7]
    function api:player_modifier/defense/base/remove
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:960}}}]
# 攻撃力増加を付与する
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.03 multiply_base
    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.06 multiply_base
    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.09 multiply_base
    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.12 multiply_base
    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.15 multiply_base
    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.18 multiply_base
    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.21 multiply_base
    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.24 multiply_base
    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.armor modifier add 10-8-2-8-39549000000 "960" 0.27 multiply_base

    data modify storage api: Argument.UUID set value [I;1,1,960,7]
    execute store result storage api: Argument.Amount double 0.03 run scoreboard players get $Count Temporary
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/defense/base/add

# リセット
    scoreboard players reset $Count Temporary