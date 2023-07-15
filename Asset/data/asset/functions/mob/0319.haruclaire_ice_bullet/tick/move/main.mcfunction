#> asset:mob/0319.haruclaire_ice_bullet/tick/move/main
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/2.tick

# パーティクル
    particle end_rod ~ ~1 ~ 0 0 0 0 1 force @a[distance=..30]
    particle electric_spark ~ ~0.9 ~ 0.3 0.3 0.3 0 1 force @a[distance=..30]

# 再帰カウントが0なら弾速からセット
    scoreboard players operation @s 8V.CurrentSpeed = @s 8V.Speed
# 回転
    scoreboard players operation @s 8V.Rotation = @s 8V.Range
    execute store result entity @s Pose.Head[0] float 1 run scoreboard players operation @s 8V.Rotation *= $2 Const

# 移動
    function asset:mob/0319.haruclaire_ice_bullet/tick/move/move
