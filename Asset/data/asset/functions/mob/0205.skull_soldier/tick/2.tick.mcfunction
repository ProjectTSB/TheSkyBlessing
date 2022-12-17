#> asset:mob/0205.skull_soldier/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0205.skull_soldier/tick/1.trigger

# 離れてる時は弓
    execute if entity @s[tag=5P.Melee] unless entity @a[distance=..5] run function asset:mob/0205.skull_soldier/tick/event/switch_ranged
    tag @s[tag=5P.Ranged] remove 5P.Melee

# 近い時は近接武器
    execute if entity @s[tag=5P.Ranged] if entity @a[distance=..5] run function asset:mob/0205.skull_soldier/tick/event/switch_melee
    tag @s[tag=5P.Melee] remove 5P.Ranged