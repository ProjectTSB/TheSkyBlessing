#> asset:mob/0314.blazing_bomb/tick/event/fireball/
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/2.tick


# 動く、加速度は時間で変わる
    execute at @s run function asset:mob/0314.blazing_bomb/tick/event/fireball/move
    execute if score @s 8Q.Tick matches 10.. at @s run function asset:mob/0314.blazing_bomb/tick/event/fireball/move
    execute if score @s 8Q.Tick matches 20.. at @s run function asset:mob/0314.blazing_bomb/tick/event/fireball/move
    execute if score @s 8Q.Tick matches 40.. at @s run function asset:mob/0314.blazing_bomb/tick/event/fireball/move

# 時間切れ
    execute if score @s 8Q.Tick matches 100 run function asset:mob/0314.blazing_bomb/tick/event/fireball/explosion

# プレイヤーの衝突判定
    execute at @s positioned ~-0.5 ~0.0 ~-0.5 if entity @p[dx=0] at @s run function asset:mob/0314.blazing_bomb/tick/event/fireball/explosion

# 壁の衝突判定
    execute at @s unless block ^ ^ ^1 #lib:no_collision run function asset:mob/0314.blazing_bomb/tick/event/fireball/explosion