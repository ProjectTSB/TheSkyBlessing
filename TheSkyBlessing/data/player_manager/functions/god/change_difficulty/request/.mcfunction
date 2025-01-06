#> player_manager:god/change_difficulty/request/
#
# 難易度変更処理を呼び出す
#
# @within function
#   player_manager:god/mercy/on_click
#   player_manager:god/change_believe/check-1/on_click

# 警告
    tellraw @s [{"text":"[!] この機能は試験的に実装されたものです","color":"red"}]
    # tellraw @s [{"text":"[!] 難易度を変更した場合、その情報は内部に記録されます","color":"red"}]
# 難易度を取得
    execute if score $Difficulty Global matches 1 run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[1]","interpret":true}]}]
    execute if score $Difficulty Global matches 2 run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[2]","interpret":true}]}]
    execute if score $Difficulty Global matches 3.. run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[3]","interpret":true}]}]
# トリガー付きメッセージ
    execute unless score $Difficulty Global matches 1 run tellraw @s [{"translate":"[ %s に変更する]","color":"gold","with":[{"storage":"player_manager:god","nbt":"Difficulty.Text[1]","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger Believe4 set 1"}}]
    execute unless score $Difficulty Global matches 2 run tellraw @s [{"translate":"[ %s に変更する]","color":"gold","with":[{"storage":"player_manager:god","nbt":"Difficulty.Text[2]","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger Believe4 set 2"}}]
    execute unless score $Difficulty Global matches 3.. run tellraw @s [{"translate":"[ %s に変更する]","color":"gold","with":[{"storage":"player_manager:god","nbt":"Difficulty.Text[3]","interpret":true}],"clickEvent":{"action":"run_command","value":"/trigger Believe4 set 3"}}]
# リスナー
    scoreboard players reset @s Believe4
    scoreboard players enable @s Believe4
# リセット&ループ
    schedule function player_manager:god/change_difficulty/request/listener 1t replace
