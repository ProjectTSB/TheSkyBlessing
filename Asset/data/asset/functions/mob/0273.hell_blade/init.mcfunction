#> asset:mob/0273.hell_blade/init
#
#
#
# @within function asset:mob/0273.hell_blade/tick/2.tick

# 向きを90°刻みのランダムに
    # 疑似乱数取得
        execute store result score $Random Temporary run function lib:random/
    # ほしい範囲に剰余算
        scoreboard players operation $Random Temporary %= $4 Const
    # 角度を出す
        scoreboard players set @s 7L.FallingRotation 90
        scoreboard players operation @s 7L.FallingRotation *= $Random Temporary
    # リセット
        scoreboard players reset $Random Temporary

# 落下のタグを付ける
    tag @s add 7L.Fall

# タグ消し
    tag @s remove 7L.Init

# スコアリセット
    scoreboard players set @s 7L.RotateTimer 0
