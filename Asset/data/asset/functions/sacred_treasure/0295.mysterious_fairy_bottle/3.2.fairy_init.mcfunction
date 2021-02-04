#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.2.fairy_init
#
# 最初に実行するやつ
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick

# 天空から降ろして、その後雪玉ぶつけて付近のプレイヤーに敵対させる
    #summon snowball ~ ~ ~ {Owner:[I;0,0,0,0],Motion:[0.0,1.0,0.0],Tags:["ChuzFairySnowball","ChuzFairySnowballInit"],Item:{id:"minecraft:pink_stained_glass",Count:1b}}
    #execute as @e[type=snowball,tag=ChuzFairySnowballInit,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID
    tp @s ~ ~-255 ~
    tag @s remove ChuzFairyInit
    tag @s add ChuzFairy