#> asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line
#
#
#
# @within function
#   asset:mob/0216.gray_guardian/tick/2.skill_bow/1.skill_bow
#   asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line

# パーティクル
    particle composter ~ ~ ~ 0 0 0 0 1 force

# ぶつかるまで表示
    execute positioned ^ ^ ^0.15 if entity @s[distance=..35] if block ~ ~ ~ #lib:no_collision run function asset:mob/0216.gray_guardian/tick/2.skill_bow/3.line