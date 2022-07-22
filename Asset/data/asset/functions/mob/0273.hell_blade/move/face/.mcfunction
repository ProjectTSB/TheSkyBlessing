#> asset:mob/0273.hell_blade/move/face/
#
#
#
# @within function asset:mob/0273.hell_blade/move/

# チェック用のタグ付け
    tag @s add 7L.FaceCheck

# 床の時
    # ぶつかったなら壁上りタグ
        execute as @s[tag=7L.FaceFloor,tag=7L.FaceCheck] unless block ^ ^ ^1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/wall/up

    # ブロック終わったなら壁下りタグ
        execute as @s[tag=7L.FaceFloor,tag=7L.FaceCheck] if block ^ ^-1 ^1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/wall/down

# 壁で上向きの時
    # ぶつかったなら天井タグ
        execute as @s[tag=7L.FaceWallUp,tag=7L.FaceCheck] unless block ~ ~1 ~ #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/ceiling

    # ブロック終わったなら床タグ
        execute as @s[tag=7L.FaceWallUp,tag=7L.FaceCheck] if block ^ ^1 ^1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/floor

# 壁で下向きの時
    # ぶつかったなら床タグ
        execute as @s[tag=7L.FaceWallDown,tag=7L.FaceCheck] unless block ~ ~-1 ~ #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/floor

    # ブロック終わったなら天井タグ
        execute as @s[tag=7L.FaceWallDown,tag=7L.FaceCheck] if block ^ ^-1 ^-1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/ceiling

# 天井の時
    # ぶつかったなら壁下りタグ
        execute as @s[tag=7L.FaceCeiling,tag=7L.FaceCheck] unless block ^ ^ ^-1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/wall/down

    # ブロック終わったなら壁上りタグ
        execute as @s[tag=7L.FaceCeiling,tag=7L.FaceCheck] if block ^ ^1 ^-1 #asset:mob/0273.hell_blade/throughable run function asset:mob/0273.hell_blade/move/face/wall/up
