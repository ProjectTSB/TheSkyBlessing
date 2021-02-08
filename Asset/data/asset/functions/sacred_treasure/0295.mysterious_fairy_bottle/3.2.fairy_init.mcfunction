#> asset:sacred_treasure/0295.mysterious_fairy_bottle/3.2.fairy_init
#
# 最初に実行するやつ
#
# @within function asset:sacred_treasure/0295.mysterious_fairy_bottle/3.1.fairy_tick

# 天空から降ろす
    tp @s ~ ~-255 ~
#    execute at @p run tp @s ~ ~ ~

# 万が一仕様変更でunivrsalAngerがfalseになったとき用
    execute at @s run summon snowball ~ ~-1 ~ {Owner:[I;0,0,0,0],Motion:[0.0,1.0,0.0],Tags:["ChuzFairySnowball","ChuzFairySnowball"],Item:{id:"minecraft:white_stained_glass",Count:1b}}
    execute as @e[type=snowball,tag=ChuzFairySnowball,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID

# タグ整備
    tag @s remove ChuzFairyInit
    tag @s add ChuzFairy

# 最寄のプレイヤー(実行者)のMP最大値取得
# まだ
