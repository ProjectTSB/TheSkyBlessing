#> asset:mob/0022.red_knight/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0022.red_knight/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=M.ArmorStand,distance=..3]