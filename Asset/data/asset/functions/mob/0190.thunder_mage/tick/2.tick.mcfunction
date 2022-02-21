#> asset:mob/0190.thunder_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0190.thunder_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust yellow_terracotta ~ ~1 ~ 0.1 0 0.1 0 1

# スコアを増やす
    scoreboard players add @s 5A.Tick 1

# 発動
    execute if score @s 5A.Tick matches 80 run function asset:mob/0190.thunder_mage/tick/3.attack