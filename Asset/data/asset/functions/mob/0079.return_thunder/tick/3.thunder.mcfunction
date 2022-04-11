#> asset:mob/0079.return_thunder/tick/3.thunder
#
#
#
# @within function asset:mob/0079.return_thunder/tick/2.tick

# 演出
    particle dust 1 1 0 1 ~ ~4 ~ 0.2 3 0.2 0 120
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 5
    playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 0.15 2 0
    playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 0.15 0 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 18.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Thunder"
    function lib:damage/modifier
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] at @s run function lib:damage/
# リセット
    data remove storage lib: Argument

# 円
    particle electric_spark ^0 ^ ^-1 0 0 0 0 1
    particle electric_spark ^0.30902 ^ ^-0.95106 0 0 0 0 1
    particle electric_spark ^0.58779 ^ ^-0.80902 0 0 0 0 1
    particle electric_spark ^0.80902 ^ ^-0.58779 0 0 0 0 1
    particle electric_spark ^0.95106 ^ ^-0.30902 0 0 0 0 1
    particle electric_spark ^1 ^ ^0 0 0 0 0 1
    particle electric_spark ^0.95106 ^ ^0.30902 0 0 0 0 1
    particle electric_spark ^0.80902 ^ ^0.58779 0 0 0 0 1
    particle electric_spark ^0.58779 ^ ^0.80902 0 0 0 0 1
    particle electric_spark ^0.30902 ^ ^0.95106 0 0 0 0 1
    particle electric_spark ^0 ^ ^1 0 0 0 0 1
    particle electric_spark ^-0.30902 ^ ^0.95106 0 0 0 0 1
    particle electric_spark ^-0.58779 ^ ^0.80902 0 0 0 0 1
    particle electric_spark ^-0.80902 ^ ^0.58779 0 0 0 0 1
    particle electric_spark ^-0.95106 ^ ^0.30902 0 0 0 0 1
    particle electric_spark ^-1 ^ ^0 0 0 0 0 1
    particle electric_spark ^-0.95106 ^ ^-0.30902 0 0 0 0 1
    particle electric_spark ^-0.80902 ^ ^-0.58779 0 0 0 0 1
    particle electric_spark ^-0.58779 ^ ^-0.80902 0 0 0 0 1
    particle electric_spark ^-0.30902 ^ ^-0.95106 0 0 0 0 1