#> asset:mob/0237.lunatic_mage/skill/elemental_confine/6.shoot_fire
#
# 火の再帰を行う
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/5.fire
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/9.fire2
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/6.shoot_fire

# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[gamemode=!spectator] add LandingTarget

# 再帰
    execute if entity @s[distance=..25] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/6.shoot_fire