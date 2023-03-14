#> asset:artifact/0822.sound_of_a_star/trigger/star/04.banish
#
# 消滅処理
#
# @within function asset:artifact/0822.sound_of_a_star/trigger/star/02.main

# 演出
    playsound block.beacon.deactivate neutral @a ~ ~ ~ 0.8 0.8 0
    particle dust 0 1 1 2 ~ ~ ~ 0.4 0.4 0.4 0 15 normal @a
    particle scrape ~ ~ ~ 0.5 0.5 0.5 0 30 normal @a
# 消える
    kill @s