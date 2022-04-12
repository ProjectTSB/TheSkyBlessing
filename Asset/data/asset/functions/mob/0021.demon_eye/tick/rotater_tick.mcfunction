#> asset:mob/0021.demon_eye/tick/rotater_tick
#
# 頭の上に乗っかってるやつが使用
#
# @within function asset:mob/0021.demon_eye/tick/2.tick

# いろは丸様のホーミング機構を使用させていただきました。

# Rotation取得
    data modify storage asset:temp Rotation set from entity @s Rotation
# ホーミング
    execute store result score $L.RotX L.Rot run data get storage asset:temp Rotation[0] 1000
    execute store result score $L.RotY L.Rot run data get storage asset:temp Rotation[1] 1000

# 回転角度取得
    scoreboard players set $L.AngleX L.Rot 0
    scoreboard players set $L.AngleY L.Rot 0

# X軸の振り向き速度
    scoreboard players add $L.AngleX L.Rot 1500

# Y軸の振り向き速度
    scoreboard players add $L.AngleY L.Rot 3000

# 回転角度加算
    execute rotated as @s positioned as @a[distance=..100] positioned ^-100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $L.RotX L.Rot -= $L.AngleY L.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $L.RotX L.Rot += $L.AngleY L.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^-100 ^ positioned as @s[distance=..100] run scoreboard players operation $L.RotY L.Rot -= $L.AngleX L.Rot
    execute rotated as @s positioned as @a[distance=..100] positioned ^ ^100 ^ positioned as @s[distance=..100] run scoreboard players operation $L.RotY L.Rot += $L.AngleX L.Rot

# セット
    execute store result storage asset:temp Rotation[0] float 0.001 run scoreboard players get $L.RotX L.Rot
    execute store result storage asset:temp Rotation[1] float 0.001 run scoreboard players get $L.RotY L.Rot
    data modify entity @s Rotation set from storage asset:temp Rotation