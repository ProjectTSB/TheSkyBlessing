#> asset:mob/0217.medousa_eye/tick/09.release_stone
#
#
#
# @within function asset:mob/0217.medousa_eye/tick/08.stone_time

# タグ削除
    tag @s remove 61.Stone

# スコアリセット
    scoreboard players reset @s 61.StoneTime

# attribute解除
    attribute @s generic.knockback_resistance modifier remove 00000001-0000-0002-0000-00d900000000
