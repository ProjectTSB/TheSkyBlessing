#> asset:mob/0151.recombined/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0151.recombined/death/1.trigger

# 演出
    particle block redstone_block ~ ~1.3 ~ 0 0 0 1 100
    playsound entity.ravager.death hostile @a