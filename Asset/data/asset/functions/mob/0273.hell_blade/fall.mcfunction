#> asset:mob/0273.hell_blade/fall
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# Motionを消す
    data modify entity @s Motion[0] set value 0.0d
    data modify entity @s Motion[2] set value 0.0d

# NoAIを外す
    data modify entity @s NoAI set value 0b

# 向きを召喚時に生成したものにする
    data modify entity @s Rotation set value [0.0f,0.0f]
    execute store result entity @s Rotation[0] float 1 run scoreboard players get @s 7L.FallingRotation

# ブロックに着地したら
    execute if data entity @s {OnGround:1b} run function asset:mob/0273.hell_blade/landing
