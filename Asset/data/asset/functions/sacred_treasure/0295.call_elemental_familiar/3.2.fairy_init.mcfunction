#> asset:sacred_treasure/0295.call_elemental_familiar/3.2.fairy_init
#
# 最初に実行するやつ
#
# @within function asset:sacred_treasure/0295.call_elemental_familiar/3.main

# 天空から降ろす
    tp @s ~ ~-255 ~
#    execute at @p run tp @s ~ ~ ~

# 万が一仕様変更でunivrsalAngerがfalseになったとき用
    execute at @s run summon snowball ~ ~-1 ~ {Owner:[I;0,0,0,0],Motion:[0.0,1.0,0.0],Tags:["295Fa.Snowball","295Fa.Snowball"],Item:{id:"minecraft:white_stained_glass",Count:1b}}
    execute as @e[type=snowball,tag=295Fa.Snowball,sort=nearest,limit=1] run data modify entity @s Owner set from entity @p UUID

# タグ整備
    tag @s remove 295Fa.Init
    tag @s add 295Fa.Main

# 最寄のプレイヤー(実行者)のMP最大値取得
# まだ
