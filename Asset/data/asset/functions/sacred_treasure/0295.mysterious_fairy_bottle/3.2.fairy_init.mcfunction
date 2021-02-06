#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.2.fairy_init
#
# 最初に実行するやつ
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick

# 天空から降ろす、その後雪玉ぶつけて付近のプレイヤーに敵対させる
    tp @s ~ ~-255 ~
    execute at @p run tp @s ~ ~ ~
    tag @s remove ChuzFairyInit
    tag @s add ChuzFairy

# 万が一仕様変更でunivrsalAngerがfalseになったとき用
    #summon snowball ~ ~ ~ {Owner:[I;0,0,0,0],Motion:[0.0,1.0,0.0],Tags:["ChuzFairySnowball","ChuzFairySnowballInit"],Item:{id:"minecraft:pink_stained_glass",Count:1b}}
    #execute as @e[type=snowball,tag=ChuzFairySnowballInit,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID