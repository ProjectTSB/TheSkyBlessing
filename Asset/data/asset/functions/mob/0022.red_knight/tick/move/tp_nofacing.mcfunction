#> asset:mob/0022.red_knight/tick/move/tp_nofacing
#
# モデルパーツごとTPするやつ、首はそのまま
#
# @within function asset:mob/0022.red_knight/tick/**

# タグをつける
    execute at @s run tag @e[type=snowball,tag=M.ModelCore,distance=..0.01,sort=nearest,limit=1] add M.ModelCoreTarget

# テレポする
    tp @s ~ ~ ~

# 位置をあわせる
    tp @e[type=snowball,tag=M.ModelCoreTarget,sort=nearest,limit=1] @s
    execute as @e[type=snowball,tag=M.ModelCore,distance=..0.01] run data modify entity @s Air set value 0

# タグを消す
    tag @e[type=snowball,tag=M.ModelCoreTarget,distance=..0.01] remove M.ModelCoreTarget