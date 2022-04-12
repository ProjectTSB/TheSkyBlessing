#> asset:mob/0104.mad_scientist/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0104.mad_scientist/tick/1.trigger

# 周囲にプレイヤーがいる時
    execute if entity @a[distance=..32] run function asset:mob/0104.mad_scientist/tick/player_is_nearby