#> asset:sacred_treasure/0369.fire_magic/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0369.fire_magic/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    execute as @e[type=!player] at @s facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~