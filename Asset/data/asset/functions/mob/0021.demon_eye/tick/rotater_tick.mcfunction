#> asset:mob/0021.demon_eye/tick/rotater_tick
#
# 頭の上に乗っかってるやつが使用
#
# @within function asset:mob/0021.demon_eye/tick/2.tick

# いろは丸様のホーミング機構を使用させていただきました。

# ホーミング
    execute store result score $21.RotX 21.Rot run data get entity @s Rotation[0] 1000
    execute store result score $21.RotY 21.Rot run data get entity @s Rotation[1] 1000

# 回転角度取得
    scoreboard players set $21.AngleX 21.Rot 0
    scoreboard players set $21.AngleY 21.Rot 0
    scoreboard players add $21.AngleX 21.Rot 1500
    scoreboard players add $21.AngleY 21.Rot 3000

# 回転角度加算
    execute rotated as @s positioned as @a[distance=..100] positioned ^-100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $21.RotX 21.Rot -= $21.AngleY 21.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $21.RotX 21.Rot += $21.AngleY 21.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^-100 ^ positioned as @s[distance=..100] run scoreboard players operation $21.RotY 21.Rot -= $21.AngleX 21.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^100 ^ positioned as @s[distance=..100] run scoreboard players operation $21.RotY 21.Rot += $21.AngleX 21.Rot

    execute store result entity @s Rotation[0] float 0.001 run scoreboard players get $21.RotX 21.Rot
    execute store result entity @s Rotation[1] float 0.001 run scoreboard players get $21.RotY 21.Rot