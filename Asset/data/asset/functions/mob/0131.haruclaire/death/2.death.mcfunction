#> asset:mob/0131.haruclaire/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0131.haruclaire/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=3N.ArmorStand]