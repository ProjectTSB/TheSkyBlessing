#> asset:mob/0080.lightning/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0080.lightning/tick/1.trigger

# スコア蓄積
    scoreboard players add @s 28.Tick 1

# 前方拡散
    execute if score @s 28.Tick matches 1 run function asset:mob/0080.lightning/tick/3.foward_spread

# 前方へ移動
    execute if block ^ ^ ^1 #asset:mob/0080.lightning/no_collision run tp @s ^ ^ ^1

# 演出
    particle dust 1 1 0 1 ~ ~ ~ 0.5 0.5 0.5 0 3 normal @a

# 属性ダメージ処理
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=1.5] run function asset:mob/0080.lightning/tick/4.element_damage

# ブロックに接触した際の処理
    execute unless block ^ ^ ^1 #asset:mob/0080.lightning/no_collision run function asset:mob/0080.lightning/tick/5.banish

# 一艇時間たったらキル
    kill @s[scores={28.Tick=100..}]