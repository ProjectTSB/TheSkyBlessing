#> asset:mob/0022.red_knight/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0022.red_knight/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=M.ArmorStand]


# 演出
    particle portal ~ ~ ~ 0 0 0 2 250 force @a
    particle effect ~ ~ ~ 0 10 0 0.1 250 force @a
    particle cloud ~ ~ ~ 1 1 1 0.1 100
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 0

# ボスドロ
    data modify storage api: Argument.ID set value 364
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id