#> asset:mob/0273.hell_blade/move/
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# 付く面のチェック
    execute if score @s 7L.Timer matches 3 align xyz positioned ~.5 ~.5 ~.5 run function asset:mob/0273.hell_blade/move/face/

# 付いてる面で分岐
    # 床
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/move/floor

    # 壁上
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/move/wall/up

    # 壁下
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/move/wall/down

    # 天井
        execute as @s[tag=7L.FaceFloor] run function asset:mob/0273.hell_blade/move/ceiling



