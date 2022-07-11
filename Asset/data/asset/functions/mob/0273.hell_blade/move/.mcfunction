#> asset:mob/0273.hell_blade/move/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# 付く面のチェック
    execute if score @s 7L.Timer matches 3 align xyz positioned ~.5 ~.5 ~.5 run function asset:mob/0273.hell_blade/move/face/

# 付いてる面で分岐
    # 床
        execute as @s[tag=7L.FaceFloor] at @s run tp @s ^ ^ ^0.25

    # 壁上
        execute as @s[tag=7L.FaceWallUp] at @s run tp @s ~ ~0.25 ~

    # 壁下
        execute as @s[tag=7L.FaceWallDown] at @s run tp @s ~ ~-0.25 ~

    # 天井
        execute as @s[tag=7L.FaceCeiling] at @s run tp @s ^ ^ ^-0.25

# タイマー
    scoreboard players add @s 7L.Timer 1
    execute if score @s 7L.Timer matches 4.. run scoreboard players set @s 7L.Timer 0

# 横にプレイヤーがいるかチェック
    execute if score @s 7L.Timer matches 1 if score @s 7L.RotateTimer matches 1.. run scoreboard players remove @s 7L.RotateTimer 1
    execute at @s[tag=7L.FaceFloor] if score @s 7L.RotateTimer matches 0 align xyz positioned ~ ~-1 ~ run function asset:mob/0273.hell_blade/chase/check

# SFX
    execute at @s run playsound entity.player.hurt_sweet_berry_bush hostile @a ~ ~ ~ .3 2
    execute at @s run playsound item.trident.return hostile @a ~ ~ ~ .2 2
    execute at @s[tag=7L.FaceFloor] run particle minecraft:item gunpowder ~ ~ ~ 0 0 0 0.12 5
    execute at @s unless entity @s[tag=!7L.FaceWallUp,tag=!7L.FaceWallDown] run particle minecraft:item gunpowder ~ ~.2 ~ 0 0 0 0.12 5
    execute at @s[tag=7L.FaceCeiling] run particle minecraft:item gunpowder ~ ~.8 ~ 0 0 0 0.12 5
