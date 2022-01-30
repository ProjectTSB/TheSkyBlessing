#> asset:mob/0027.skull_sniper/tick/2.3.check
#
# Mobのtick時の処理
#
# @within function
#       asset:mob/0027.skull_sniper/tick/2.tick
#       asset:mob/0027.skull_sniper/tick/2.3.check
# レーザー投射
    execute if entity @p[gamemode=!spectator,distance=..2] run tag @s add Landing
    execute unless block ^ ^ ^1 #lib:no_collision run tag @s add Landing

# 演出
    execute if entity @p[gamemode=!spectator,distance=..2] run playsound block.note_block.bit hostile @p ~ ~ ~ 0.5 2
    particle minecraft:dust 0.58 0 0 0.75 ~ ~ ~ 0 0 0 0 1

# 再起
    execute positioned ^ ^ ^1 if entity @s[tag=!Landing,distance=..30] run function asset:mob/0027.skull_sniper/tick/2.3.check

# タグ消し
    tag @s[tag=Landing] remove Landing