#> asset:mob/0232.honey_leader/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0232.honey_leader/tick/1.trigger

# バフ間隔スコア
    execute unless score @s 6G.BeamCool matches 99.. run scoreboard players add @s 6G.BuffCool 1

# ビーム間隔スコア
    execute unless score @s 6G.BeamCool matches 99.. positioned ^ ^ ^10 if entity @a[gamemode=!spectator,distance=..10] run scoreboard players add @s 6G.BeamCool 1
    execute if score @s 6G.BeamCool matches 99.. run scoreboard players add @s 6G.BeamCool 1

# 周囲にバフ&回復
    execute if score @s 6G.BuffCool matches 80.. run function asset:mob/0232.honey_leader/tick/03.buff_and_heal

# ビーム準備
    execute if score @s 6G.BeamCool matches 100 run function asset:mob/0232.honey_leader/tick/04.ready_beam

# ビーム発射
    execute if score @s 6G.BeamCool matches 120 positioned ~ ~1.5 ~ run playsound block.honey_block.hit hostile @a[distance=..20] ~ ~ ~ 1 1 0
    execute if score @s 6G.BeamCool matches 120 positioned ~ ~1.5 ~ run playsound block.honey_block.hit hostile @a[distance=..20] ~ ~ ~ 1 1 0
    execute if score @s 6G.BeamCool matches 120 positioned ~ ~1.5 ~ run function asset:mob/0232.honey_leader/tick/06.beam

# NoAIとビームスコアリセット
    execute if score @s 6G.BeamCool matches 120.. run data modify entity @s NoAI set value 0b
    execute if score @s 6G.BeamCool matches 120.. run scoreboard players reset @s 6G.BeamCool
