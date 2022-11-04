#> asset:mob/0022.red_knight/tick/move/call_model
#
# モデルパーツのみを移動させる
#
# @within function asset:mob/0022.red_knight/tick/**

# タグをつける
    execute at @s run tag @e[type=snowball,tag=M.ModelCore,distance=..5,sort=nearest,limit=1] add M.ModelCoreTarget

# 位置をあわせる
    tp @e[type=snowball,tag=M.ModelCoreTarget,sort=nearest,limit=1] @s
    execute as @e[type=snowball,tag=M.ModelCore,distance=..5] run data modify entity @s Air set value 0

# タグを消す
    tag @e[type=snowball,tag=M.ModelCoreTarget,distance=..5] remove M.ModelCoreTarget