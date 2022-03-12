#> asset:mob/0265.dark_familiar/tick/rotater/tick
#
#
#
# @within function asset:mob/0265.dark_familiar/tick/2.tick

# いろは丸様のホーミング機構を使用させていただきました。

# Rotation取得
    data modify storage asset:temp Rotation set from entity @s Rotation
# ホーミング
    execute store result score $7D.RotX 7D.Rot run data get storage asset:temp Rotation[0] 1000
    execute store result score $7D.RotY 7D.Rot run data get storage asset:temp Rotation[1] 1000

# 回転角度取得
    scoreboard players set $7D.AngleX 7D.Rot 0
    scoreboard players set $7D.AngleY 7D.Rot 0

# X軸の振り向き速度
    scoreboard players add $7D.AngleX 7D.Rot 1500

# Y軸の振り向き速度
    scoreboard players add $7D.AngleY 7D.Rot 3000

# 回転角度加算
    execute rotated as @s positioned as @e[type=zombie,tag=7C.Entity,distance=..100] positioned ^-100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $7D.RotX 7D.Rot -= $7D.AngleY 7D.Rot
    execute rotated as @s positioned as @e[type=zombie,tag=7C.Entity,distance=..100] positioned ^100 ^ ^ positioned as @s[distance=..100] run scoreboard players operation $7D.RotX 7D.Rot += $7D.AngleY 7D.Rot
    execute rotated as @s positioned as @e[type=zombie,tag=7C.Entity,distance=..100] positioned ^ ^-100 ^ positioned as @s[distance=..100] run scoreboard players operation $7D.RotY 7D.Rot -= $7D.AngleX 7D.Rot
    execute rotated as @s positioned as @e[type=zombie,tag=7C.Entity,distance=..100] positioned ^ ^100 ^ positioned as @s[distance=..100] run scoreboard players operation $7D.RotY 7D.Rot += $7D.AngleX 7D.Rot

# セット
    execute store result storage asset:temp Rotation[0] float 0.001 run scoreboard players get $7D.RotX 7D.Rot
    execute store result storage asset:temp Rotation[1] float 0.001 run scoreboard players get $7D.RotY 7D.Rot
    data modify entity @s Rotation set from storage asset:temp Rotation