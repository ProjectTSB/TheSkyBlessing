#> asset:mob/0047.the_heretic/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0047.the_heretic/attack/1.trigger

# 二回目以降の攻撃
    execute unless entity @s[tag=1B.First] run function asset:mob/0047.the_heretic/attack/2.2.attack2

# 最初の攻撃
    execute if entity @s[tag=1B.First] run function asset:mob/0047.the_heretic/attack/2.1.first_attack