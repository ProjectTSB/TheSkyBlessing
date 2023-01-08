#> asset:mob/0301.sinful_thoughts/player_process/3.reset
#
#
#
# @within function asset:mob/0301.sinful_thoughts/player_process/2.main

# 補正削除
    data modify storage api: Argument.UUID set value [I;1,2,301,0]
    function api:modifier/heal/remove

# スコアリセット
    scoreboard players reset @s 8D.DebuffTime