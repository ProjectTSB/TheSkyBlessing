#> asset:mob/0284.lexiel/tick/move/tereport_no_facing
#
# 彼女をテレポートする時はコレを使う。アマスタ死ぬからね
#
# @within function asset:mob/0284.lexiel/tick/**

# タグをつける
    execute at @s run tag @e[type=snowball,tag=7W.ModelCore,distance=..0.01,sort=nearest,limit=1] add 7W.ModelCoreThis
# テレポする
    tp @s ~ ~ ~
# 位置をあわせる
    tp @e[type=snowball,tag=7W.ModelCoreThis,sort=nearest,limit=1] @s
    execute as @e[type=snowball,tag=7W.ModelCore,distance=..0.01] run data modify entity @s Air set value 0
# タグを消す
    tag @e[type=snowball,tag=7W.ModelCoreThis,distance=..0.01] remove 7W.ModelCoreThis