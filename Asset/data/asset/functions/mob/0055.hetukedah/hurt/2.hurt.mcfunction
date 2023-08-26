#> asset:mob/0055.hetukedah/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0055.hetukedah/hurt/1.trigger

# 演出
    playsound entity.ravager.hurt hostile @a ~ ~ ~ 1 1.5
    particle minecraft:dust 1 0 1 2 ~ ~1.3 ~ 0.5 0.5 0.5 0 10 force @a[distance=..30]
    particle minecraft:dust 0.5 0 0.5 2 ~ ~1.3 ~ 0.8 0.8 0.8 0 5 force @a[distance=..30]

# HPチェック
    