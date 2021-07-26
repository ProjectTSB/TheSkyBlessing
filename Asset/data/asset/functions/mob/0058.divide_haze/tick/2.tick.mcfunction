#> asset:mob/0058.divide_haze/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0058.divide_haze/tick/1.trigger

# 演出
    particle dust 0 0.2 0.1 1 ~ ~1 ~ 0.5 0.3 0.5 1 6 normal @a[distance=..12]

# 周囲のプレイヤーにウィザー
    effect give @a[gamemode=!spectator,distance=..1.2] wither 1 2 false

# 増殖スコア(周囲に増殖靄がいなければ増える)
   execute unless entity @e[type=skeleton,scores={MobID=58},distance=0.0001..20] run scoreboard players add @s 1M.HazeCount 1

# 増殖
   execute unless entity @e[type=skeleton,scores={MobID=58},distance=0.0001..20] if score @s 1M.HazeCount matches 300.. run function asset:mob/0058.divide_haze/tick/divide