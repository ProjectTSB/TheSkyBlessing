#> asset:mob/0055.hetukedah/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0055.hetukedah/hurt/1.trigger

# 演出
    playsound entity.ravager.hurt hostile @a ~ ~ ~ 1 0.7
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 20