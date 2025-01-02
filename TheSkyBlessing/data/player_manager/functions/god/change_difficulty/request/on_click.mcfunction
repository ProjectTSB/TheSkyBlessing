#> player_manager:god/change_difficulty/request/on_click
#
#
#
# @within function player_manager:god/change_difficulty/request/listener

# エラー値
    execute unless score @s Believe4 matches 1..3 run function lib:message/invalid_operation
    execute if score @s Believe4 matches 1..3 if score @s Believe4 = $Difficulty Global run function lib:message/invalid_operation
# ロック
    execute unless score @s Believe4 = $Difficulty Global if score @s Believe4 matches 1..3 if data storage player_manager:god Difficulty{Lock:1b} run tellraw @s [{"text":"他の難易度変更プロセスが進行中です。","color":"red"}]
# 正常値
    execute unless score @s Believe4 = $Difficulty Global if score @s Believe4 matches 1..3 unless data storage player_manager:god Difficulty{Lock:1b} run tag @s add Difficulty.Request
    execute if entity @s[tag=Difficulty.Request] store result storage player_manager:god Difficulty.Target int 1 run scoreboard players get @s Believe4
    execute if entity @s[tag=Difficulty.Request] run function player_manager:god/change_difficulty/confirm/
# リセット
    execute unless score @s Believe4 matches 0 run scoreboard players reset @s Believe4
