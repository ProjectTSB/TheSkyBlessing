#> asset:mob/0273.hell_blade/unstuck/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# 付いてる面で分岐
    # 床
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/unstuck/floor

    # 壁
        execute unless entity @s[tag=!7L.FaceWallUp,tag=!7L.FaceWallDown] run function asset:mob/0273.hell_blade/unstuck/wall

    # 天井
        execute as @s[tag=7L.FaceCeiling] run function asset:mob/0273.hell_blade/unstuck/ceiling


