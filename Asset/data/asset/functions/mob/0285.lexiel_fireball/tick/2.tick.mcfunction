#> asset:mob/0285.lexiel_fireball/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0285.lexiel_fireball/tick/1.trigger

# スコア
    scoreboard players add @s 7X.Time 1

# 追尾する
    execute if score @s 7X.Time matches ..5 run tp @s ^ ^ ^1 ~ ~
    execute if score @s 7X.Time matches 5..10 run tp @s ^ ^ ^0.8 ~ ~
    execute if score @s 7X.Time matches 10..20 run tp @s ^ ^ ^0.6 ~ ~

# 時間で爆破
    execute if score @s 7X.Time matches 25 run function asset:mob/0285.lexiel_fireball/tick/3.damage

# 地面に着いたら爆発
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0285.lexiel_fireball/tick/3.damage
# プレイヤーにあたったら爆発
    execute if entity @a[gamemode=!spectator,distance=..2] run function asset:mob/0285.lexiel_fireball/tick/3.damage

# particle
    particle flame ~ ~0.2 ~ 0 0 0 0.01 2
    particle smoke ~ ~0.2 ~ 0 0 0 0.01 3
