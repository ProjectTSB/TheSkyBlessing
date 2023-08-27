#> asset:mob/0318.haruclaire_rod/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0318.haruclaire_rod/tick/1.trigger

# 演出
    execute positioned ~ ~1.4 ~ rotated ~-90 ~ run particle firework ~ ~ ~ 0 0 0 0 1

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 8U.CurrentSpeed = @s 8U.Speed
# 回転
    scoreboard players operation @s 8U.Rotation = @s 8U.Range
    execute store result entity @s Pose.Head[1] float 1 run scoreboard players operation @s 8U.Rotation *= $13 Const

# 移動
    function asset:mob/0318.haruclaire_rod/tick/move