#> asset:mob/0115.jewel_bullet/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0115.jewel_bullet/tick/1.trigger

# スコア
    scoreboard players add @s 36.Tick 1

# 演出
    particle minecraft:dust 8 1 8 1.5 ~ ~1.2 ~ 0.4 0.4 0.4 1 3 normal @a
    playsound minecraft:block.amethyst_cluster.step hostile @a ~ ~ ~ 0.4 1 0

# プレイヤーへのダメージ
    execute positioned ~-0.5 ~ ~-0.5 if entity @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0115.jewel_bullet/tick/3.damage

# 移動
    tp @s ^ ^ ^0.8

# スコアが32以上でkill
    execute if score @s 36.Tick matches 32.. run kill @s