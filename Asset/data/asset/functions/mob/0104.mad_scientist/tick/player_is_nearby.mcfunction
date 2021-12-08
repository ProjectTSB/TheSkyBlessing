#> asset:mob/0104.mad_scientist/tick/player_is_nearby
#
# プレイヤーが近くにいるとき
#
# @within function asset:mob/0104.mad_scientist/tick/2.tick

# スコア
    scoreboard players add @s 2W.Tick 1

# 最初にまず4つの属性に分岐
    execute if score @s 2W.Tick matches 1 run function asset:mob/0104.mad_scientist/tick/3.random_element_select

# 投げる予告音
    execute if score @s 2W.Tick matches 100 run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 1.5

# ポーションを投げる(Projectile使用)
    execute if score @s 2W.Tick matches 120 run function asset:mob/0104.mad_scientist/tick/4.throw_potion