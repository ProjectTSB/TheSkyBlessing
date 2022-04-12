#> asset:mob/0079.thundercloud/tick/3.thunder
#
#
#
# @within function asset:mob/0079.thundercloud/tick/2.tick

# スコアリセット
    scoreboard players reset @s 27.FallThunder

# 雷を落とす
    execute if score @s 27.Tick matches 49 positioned ^0 ^ ^-1.25 rotated ~ 90 run function asset:mob/0079.thundercloud/tick/4.fall_thunder
    execute if score @s 27.Tick matches 51 positioned ^1.08253 ^ ^0.625 rotated ~ 90 run function asset:mob/0079.thundercloud/tick/4.fall_thunder
    execute if score @s 27.Tick matches 53 positioned ^-1.08253 ^ ^0.625 rotated ~ 90 run function asset:mob/0079.thundercloud/tick/4.fall_thunder

