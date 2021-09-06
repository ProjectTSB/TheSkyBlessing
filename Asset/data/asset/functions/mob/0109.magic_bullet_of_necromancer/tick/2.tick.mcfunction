#> asset:mob/0109.magic_bullet_of_necromancer/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0109.magic_bullet_of_necromancer/tick/1.trigger

# スコア
    scoreboard players add @s 31.Tick 1

# 移動
    tp @s ^ ^ ^1

# 目の前がブロックだったら消滅
    execute unless block ^ ^ ^1 #lib:no_collision run kill @s

# 演出
    particle witch ~ ~ ~ 0.4 0.4 0.4 0.1 4 normal @a

# 近くのプレイヤーに対する処理
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0109.magic_bullet_of_necromancer/tick/3.to_player_process

# 消滅
    execute if score @s 31.Tick matches 40.. run kill @s