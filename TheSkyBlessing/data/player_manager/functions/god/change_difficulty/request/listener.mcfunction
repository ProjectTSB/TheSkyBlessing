#> player_manager:god/change_difficulty/request/listener
#
# 難易度変更処理を呼び出す
#
# @within function
#   player_manager:god/change_difficulty/request/
#   player_manager:god/change_difficulty/request/listener

# チェック
    execute as @a[scores={Believe4=1..}] run function player_manager:god/change_difficulty/request/on_click
    execute as @a[scores={Believe4=0}] unless score @s InArea matches 1 run scoreboard players reset @s Believe4
    execute as @a[scores={Believe4=0}] unless score @s InSubArea matches 1..5 run scoreboard players reset @s Believe4
# ループ
    execute if entity @a[scores={Believe4=0},limit=1] run schedule function player_manager:god/change_difficulty/request/listener 1t
