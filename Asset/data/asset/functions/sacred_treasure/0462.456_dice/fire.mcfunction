#> asset:sacred_treasure/0462.456_dice/fire
#
# 火属性の処理
#
# @within function asset:sacred_treasure/0462.456_dice/3.main

# ダメージの属性設定
    data modify storage lib: Argument.ElementType set value "Fire"

# 演出
    execute at @e[tag=7e.Target] run particle minecraft:flame ~ ~1 ~ 0 0 0 0.05 30 force