#> asset:mob/0120.convict/player_process/3.reset
#
#
#
# @within function asset:mob/0120.convict/player_process/2.main

# 補正削除
    data modify storage api: Argument.UUID set value [I;1,2,120,0]
    function api:modifier/heal/remove

# スコアリセット
    scoreboard players reset @s 3C.DebuffTime