#> asset:mob/1004.tultaria/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/1004.tultaria/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=RW.ArmorStand]
# マーカー消す
    kill @e[type=marker,tag=RW.XYZ,limit=1]

# 演出
    playsound minecraft:item.trident.thunder hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 2 2
    particle minecraft:witch ~ ~1 ~ 1 1 1 0.1 50
    particle cloud ~ ~1 ~ 1 1 1 0.1 50
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1