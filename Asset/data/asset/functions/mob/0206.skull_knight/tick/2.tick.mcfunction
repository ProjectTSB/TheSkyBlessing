#> asset:mob/0206.skull_knight/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0206.skull_knight/tick/1.trigger

# 離れてる時は弓
    execute if entity @s[tag=5Q.Melee] if entity @a[distance=5..16] run function asset:mob/0206.skull_knight/tick/event/switch_ranged
    tag @s[tag=5Q.Ranged] remove 5Q.Melee

    # 遠距離モード時にバックステップ
        scoreboard players add @s[tag=5Q.Ranged] 5Q.Move 1
        execute facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^3 #lib:no_collision if score @s 5Q.Move matches 40.. run function asset:mob/0206.skull_knight/tick/event/frontstep

# 近い時は近接武器
    execute if entity @s[tag=5Q.Ranged] if entity @a[distance=..5] run function asset:mob/0206.skull_knight/tick/event/switch_melee
    tag @s[tag=5Q.Melee] remove 5Q.Ranged

    # 近距離モード時にバックステップ
        scoreboard players add @s[tag=5Q.Melee] 5Q.Move2 1
        execute facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #lib:no_collision if score @s 5Q.Move2 matches 80.. run function asset:mob/0206.skull_knight/tick/event/backstep
