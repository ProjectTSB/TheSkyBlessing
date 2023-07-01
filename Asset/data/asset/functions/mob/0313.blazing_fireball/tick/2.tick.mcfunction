#> asset:mob/0313.blazing_fireball/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0313.blazing_fireball/tick/1.trigger

# パーティクル
    particle smoke ~ ~ ~ 0.1 0.1 0.1 0.001 3

# 移動
    execute at @s run function asset:mob/0313.blazing_fireball/tick/move
    execute at @s run function asset:mob/0313.blazing_fireball/tick/move
    execute at @s run function asset:mob/0313.blazing_fireball/tick/move

# Tick加算
    scoreboard players add @s 8P.Tick 1

# 時間切れ
    execute if score @s 8P.Tick matches 60 run function asset:mob/0313.blazing_fireball/tick/explosion

# プレイヤーの衝突判定
    execute at @s positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] run function asset:mob/0313.blazing_fireball/tick/explosion

# 壁の衝突判定
    execute at @s unless block ^ ^ ^1 #lib:no_collision run function asset:mob/0313.blazing_fireball/tick/explosion