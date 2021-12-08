#> lib:score_to_health_wrapper/core/die
#
#
#
# @within function lib:score_to_health_wrapper/proc

# 独自の死亡メッセージを出すためにバニラのを無効化する
    gamerule showDeathMessages false
# ばいばい。
    kill @s
# 死亡メッセージ
    function lib:score_to_health_wrapper/core/show_death_message
# リセット
    gamerule showDeathMessages true
    scoreboard players reset @s ScoreToHealth