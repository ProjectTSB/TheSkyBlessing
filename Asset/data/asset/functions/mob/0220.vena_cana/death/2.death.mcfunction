#> asset:mob/0220.vena_cana/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0220.vena_cana/death/1.trigger

# 演出
    playsound entity.drowned.death hostile @a ~ ~ ~ 0.8 1.2 0
    particle block warped_wart_block ~ ~1.2 ~ 0.3 0.4 0.3 0 60 normal @a