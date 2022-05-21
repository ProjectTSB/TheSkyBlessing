#> asset:mob/0059.jack_o_lantern/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0059.jack_o_lantern/hurt/1.trigger

# タグをつける
    tag @s add 1N.Hurt
# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0