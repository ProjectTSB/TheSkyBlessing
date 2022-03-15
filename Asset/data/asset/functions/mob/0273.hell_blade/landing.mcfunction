#> asset:mob/0273.hell_blade/landing
#
#
#
# @within function asset:mob/0273.hell_blade/fall

# フルブロック未満のと着地したらブロックのど真ん中に補正する
    execute unless block ~ ~ ~ #lib:no_collision align xyz positioned ~.5 ~1 ~.5 rotated ~ 0 run tp @s ^ ^ ^-.125
    execute if block ~ ~ ~ #lib:no_collision align xyz positioned ~.5 ~ ~.5 rotated ~ 0 run tp @s ^ ^ ^-.125

# NoAIとOnGroundをつける
    data modify entity @s NoAI set value 1b
    data modify entity @s OnGround set value 1b

# 落下タグを消す
    tag @s remove 7L.Fall

# 面のタグをつける
    tag @s add 7L.FaceFloor

# スコアを初期化
    scoreboard players set @s 7L.Timer 1