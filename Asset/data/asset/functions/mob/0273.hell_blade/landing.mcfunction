#> asset:mob/0273.hell_blade/landing
#
#
#
# @within function asset:mob/0273.hell_blade/fall

# フルブロック未満のと着地したらブロックのど真ん中に補正する
    execute unless block ~ ~ ~ #lib:no_collision align xyz positioned ~0.5 ~1 ~0.5 rotated ~ 0 run tp @s ^ ^ ^-0.125 ~ ~
    execute if block ~ ~ ~ #lib:no_collision align xyz positioned ~0.5 ~ ~0.5 rotated ~ 0 run tp @s ^ ^ ^-0.125 ~ ~

# NoAIをつける
    data modify entity @s NoAI set value 1b

# モデル適応
    data modify entity @s ArmorItems[3].tag.CustomModelData set value 20160

# 落下タグを消す
    tag @s remove 7L.Fall

# 曲がるタグを消す
    tag @s remove 7L.RotateLeft
    tag @s remove 7L.RotateRight

# 面のタグをつける
    tag @s remove 7L.FaceWallUp
    tag @s remove 7L.FaceWallDown
    tag @s remove 7L.FaceCeiling
    tag @s add 7L.FaceFloor

# スコアを初期化
    scoreboard players set @s 7L.Timer 1