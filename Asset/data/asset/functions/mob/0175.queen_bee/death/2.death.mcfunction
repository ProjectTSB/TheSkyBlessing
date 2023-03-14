#> asset:mob/0175.queen_bee/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0175.queen_bee/death/1.trigger

# もともといるアマスタには死んでもらう(複数召喚されてる場合、もし巻き込まれても大丈夫)
    kill @e[type=armor_stand,tag=4V.ArmorStand]

# 演出
    playsound minecraft:entity.wither.death hostile @a ~ ~ ~ 1 2
    particle cloud ~ ~ ~ 1 1 1 0.1 100
    particle explosion_emitter ~ ~ ~ 1 1 1 0.1 10

# ボスドロ
    data modify storage api: Argument.ID set value 793
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id