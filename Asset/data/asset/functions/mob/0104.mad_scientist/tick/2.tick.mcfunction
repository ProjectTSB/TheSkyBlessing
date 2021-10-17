#> asset:mob/0104.mad_scientist/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0104.mad_scientist/tick/1.trigger

# スコア
    execute if entity @a[distance=..32] run scoreboard players add @s 2W.Tick 1

# 最初にまず4つの属性に分岐
    execute if entity @a[distance=..32] if score @s 2W.Tick matches 1 run function asset:mob/0104.mad_scientist/tick/3.random_element_select

# 投げる予告音
    execute if entity @a[distance=..32] if score @s 2W.Tick matches 100 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 1.5

# ポーションを投げる(Projectile使用)
    execute if entity @a[distance=..32] if score @s 2W.Tick matches 120 run function asset:mob/0104.mad_scientist/tick/4.throw_potion