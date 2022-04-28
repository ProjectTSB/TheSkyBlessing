#> asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive
#
# 再帰ビームだよ
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/magic/03.shoot_beam
#   asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive

# 演出
    particle end_rod ~ ~ ~ 0.4 0.4 0.4 0 5 normal @a
    particle end_rod ^ ^ ^1 0.4 0.4 0.4 0 5 normal @a

# ヒット
    tag @a[gamemode=!creative,gamemode=!spectator,distance=..2] add LandingTarget

# 再帰
    execute if entity @s[distance=..40] positioned ^ ^ ^1 run function asset:mob/0237.lunatic_mage/skill/magic/05.beam_recursive