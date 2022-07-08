#> asset:mob/0216.gray_guardian/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0216.gray_guardian/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=60.ArmorStand]
# 演出
    playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 0
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0
    particle cloud ~ ~1 ~ 1 1 1 0.1 50
    particle explosion_emitter ~ ~1 ~ 0 0 0 0 1