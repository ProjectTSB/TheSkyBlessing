#> asset:mob/1004.tultaria/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/1004.tultaria/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=RW.ArmorStand]

# 演出
    playsound minecraft:entity.wither.death ambient @a ~ ~ ~ 1 2
    particle cloud ~ ~ ~ 1 1 1 0.1 100
    particle explosion_emitter ~ ~ ~ 1 1 1 0.1 10