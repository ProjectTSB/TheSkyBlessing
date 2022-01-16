#> asset:mob/0181.magic_bookshelf/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0181.magic_bookshelf/hurt/1.trigger

# 演出
    particle witch ~ ~1.2 ~ 0.5 0.4 0.5 0 20 normal @a
    playsound entity.evoker.prepare_summon hostile @a ~ ~ ~ 0.8 0.8 0