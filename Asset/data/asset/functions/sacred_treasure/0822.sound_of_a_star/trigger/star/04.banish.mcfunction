#> asset:sacred_treasure/0822.sound_of_a_star/trigger/star/04.banish
#
# 消滅処理
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/star/02.main

# 演出
    execute at @s run playsound block.beacon.deactivate player @a ~ ~ ~ 0.8 0.8 0
    execute at @s run particle dust 0 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 30 normal @a

# 消える
    kill @s