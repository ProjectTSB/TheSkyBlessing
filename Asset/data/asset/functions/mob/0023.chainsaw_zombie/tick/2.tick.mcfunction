#> asset:mob/0023.chainsaw_zombie/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0023.chainsaw_zombie/tick/1.trigger


# スコアを増やしていく
    execute if entity @p[gamemode=!spectator,distance=..10] run scoreboard players add @s N.Zombietime 1

# 突進時になんかケツアタックするのを防止する
    execute if entity @s[scores={N.Zombietime=102}] run tp @s ~ ~ ~ facing entity @p

# アタックする
    execute if entity @s[scores={N.Zombietime=100}] run function asset:mob/0023.chainsaw_zombie/tick/2.1.attack

# スコアを0にもどす
    execute if entity @s[scores={N.Zombietime=102}] run scoreboard players set @s N.Zombietime 0
