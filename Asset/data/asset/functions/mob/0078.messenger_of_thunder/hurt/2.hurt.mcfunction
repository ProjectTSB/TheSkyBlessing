#> asset:mob/0078.messenger_of_thunder/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/hurt/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~1.6 ~ 0.4 0.6 0.4 0 10 normal @a
    particle dust 0.3 0.3 0.3 1 ~ ~1.6 ~ 0.4 0.6 0.4 0 30 normal @a
    playsound block.respawn_anchor.deplete hostile @a ~ ~ ~ 0.6 2 0

# 移動速度上昇
    effect give @s speed 3 0 true