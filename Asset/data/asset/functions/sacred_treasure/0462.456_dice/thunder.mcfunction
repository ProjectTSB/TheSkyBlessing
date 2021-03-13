#> asset:sacred_treasure/0462.456_dice/thunder
#
# 雷属性の処理
#
# @within function asset:sacred_treasure/0462.456_dice/3.main

# ダメージの属性設定
    data modify storage lib: Argument.ElementType set value "Thunder"

# 演出
    execute at @e[tag=7e.Target] run particle minecraft:flash ~ ~1 ~ 0 0 0 1 1 force