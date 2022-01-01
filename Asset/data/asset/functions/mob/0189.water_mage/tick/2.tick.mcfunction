#> asset:mob/0189.water_mage/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0189.water_mage/tick/1.trigger

# パーティクル
    particle minecraft:falling_dust blue_wool ~ ~1 ~ 0.1 0 0.1 0 1

# 足がない！！！！
    effect give @s slow_falling 1 0 true

# スコア
    scoreboard players add @s 59.Tick 1

# 水魔法打つ態勢
    execute if score @s 59.Tick matches 100.. run function asset:mob/0189.water_mage/tick/03.magic
