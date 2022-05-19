#> asset:mob/0237.lunatic_mage/skill/magic/2.warning_line
#
# 予告線を出す処理
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/magic/1
#   asset:mob/0237.lunatic_mage/skill/magic/2.warning_line

# 演出
    particle dust 1 1 1 1 ~ ~ ~ 0 0 0 0 1 normal @a

# 再帰
    execute if entity @s[distance=..50] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @a[dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 run function asset:mob/0237.lunatic_mage/skill/magic/2.warning_line