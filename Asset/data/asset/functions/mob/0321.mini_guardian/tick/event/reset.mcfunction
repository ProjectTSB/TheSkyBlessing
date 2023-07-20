#> asset:mob/0321.mini_guardian/tick/event/reset
#
# リセット動作
#
# @within function
#   asset:mob/0321.mini_guardian/tick/event/attack_mode
#   asset:mob/0321.mini_guardian/tick/2.tick

# タグ削除
    tag @s remove 8X.Mode.Attack

# スコアリセット
    scoreboard players reset @s 8X.Tick