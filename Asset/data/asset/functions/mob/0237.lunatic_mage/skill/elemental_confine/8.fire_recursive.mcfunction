#> asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire_recursive
#
# 火の弾の再帰を行う
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire_recursive

# パーティクル
    #particle flame ~ ~ ~ 0.02 0.022 00.2 0.001 1 force @a[distance=..20]
    particle dust 1 0.5 0 1 ~ ~ ~ 0 0 0 0 1 force @a[distance=..20]
    particle minecraft:dust 100000000 1 0 1 ~ ~ ~ 0.02 0.02 0.02 0 1 force @a[distance=..20]

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[tag=!PlayerShouldInvulnerable,dx=0] add LandingTarget

# 再帰
    execute if entity @s[distance=..25] positioned ^ ^ ^0.25 run function asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire_recursive