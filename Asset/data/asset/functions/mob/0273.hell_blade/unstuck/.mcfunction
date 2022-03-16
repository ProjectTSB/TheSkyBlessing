#> asset:mob/0273.hell_blade/unstuck/
#
#
#
# @within function asset:mob/0273.hell_blade/**

# 付いてる面で分岐
    # 床
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/unstuck/floor

    # 壁上
        execute as @s[tag=7L.FaceWallUp] run function asset:mob/0273.hell_blade/unstuck/wall/up

    # 壁下
        execute as @s[tag=7L.FaceWallDown] run function asset:mob/0273.hell_blade/unstuck/wall/down

    # 天井
        execute as @s[tag=7L.FaceCeiling] run function asset:mob/0273.hell_blade/unstuck/ceiling


