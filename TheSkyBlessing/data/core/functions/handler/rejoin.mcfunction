#> core:handler/rejoin
#
# 二度目以降のJoin時に実行される
#
# @within function core:tick/player/

# 共通Join処理
    function core:handler/join
# Assetのrejoin処理
    function #asset:rejoin
# Reset
    scoreboard players reset @s RejoinEvent

# TIPS
    execute if entity @s[tag=TutorialEnded] run function player_manager:show_tips
