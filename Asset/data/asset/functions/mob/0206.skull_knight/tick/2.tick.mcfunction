#> asset:mob/0206.skull_knight/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0206.skull_knight/tick/1.trigger

# 離れてる時は弓
    execute if entity @s[tag=5Q.Melee] unless entity @a[distance=..5] run function asset:mob/0206.skull_knight/tick/event/switch_ranged
    tag @s[tag=5Q.Ranged] remove 5Q.Melee

# 近い時は近接武器
    execute if entity @s[tag=5Q.Ranged] if entity @a[distance=..5] run function asset:mob/0206.skull_knight/tick/event/switch_melee
    tag @s[tag=5Q.Melee] remove 5Q.Ranged