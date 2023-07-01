#> asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine
#
# 設置処理。カウントに応じた数ループ。
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/skill/spread_mine/tick
#   asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine

# 召喚
    function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/summon_mine

# カウント減算
    scoreboard players remove @s 8N.AttackAmount 1

# カウント残ってれば再帰
    execute if score @s 8N.AttackAmount matches 1.. run function asset:mob/0311.blazing_inferno/tick/skill/spread_mine/place_mine