#> asset:mob/1017.phase2_bullethell_shot/summon/3.init
#
#
#
# @within function asset:mob/1017.phase2_bullethell_shot/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# プレイヤーのほう向く
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..30] eyes run tp @s ~ ~ ~ ~ 0

# レーザー出す
    execute at @s run function asset:mob/1017.phase2_bullethell_shot/summon/4.laser

# 演出
    playsound minecraft:entity.ender_eye.death hostile @a ~ ~ ~ 2 0.8