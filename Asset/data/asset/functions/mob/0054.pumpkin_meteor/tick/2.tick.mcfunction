#> asset:mob/0054.pumpkin_meteor/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0054.pumpkin_meteor/tick/1.trigger

# 追尾する
    execute if entity @p[distance=..32] facing entity @p eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-1000 facing entity @s eyes positioned as @s run tp @s ^ ^ ^0.5 ~ ~

# 演出
    particle dust 1 0.6 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.851 0 1 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a
    particle flame ~ ~0.5 ~ 0.2 0.2 0.2 0 1 normal @a

# スコアを増やす
    scoreboard players add @s 1I.Time 1

# 殺す
    execute if score @s 1I.Time matches 50.. run kill @s
# ダメージ
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/0054.pumpkin_meteor/tick/damage
    execute if entity @e[type=zombie,scores={MobID=59},distance=..2] run function asset:mob/0054.pumpkin_meteor/tick/suicide