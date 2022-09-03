#> asset:mob/1004.tultaria/tick/move/tereport
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/1004.tultaria/tick/**

# タグをつける
    execute at @s run tag @e[type=snowball,tag=RW.ModelCore,distance=..0.01,sort=nearest,limit=1] add RW.ModelCoreThis
# テレポする
    tp @s ~ ~ ~ ~ ~
# 位置をあわせる
    tp @e[type=snowball,tag=RW.ModelCoreThis,sort=nearest,limit=1] @s
    execute as @e[type=snowball,tag=RW.ModelCore,distance=..0.01] run data modify entity @s Air set value 0
# タグを消す
    tag @e[type=snowball,tag=RW.ModelCoreThis,distance=..0.01] remove RW.ModelCoreThis