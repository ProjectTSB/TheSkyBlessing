#> player_manager:god/change_difficulty/confirm/approve/change
# @within function
#   player_manager:god/change_difficulty/request/on_click
#   player_manager:god/change_difficulty/confirm/approve/
#   player_manager:god/change_difficulty/confirm/approve/schedule

# 難度値を代入
    execute store result score $Difficulty Global run data get storage player_manager:god Difficulty.Target
    execute if score $Difficulty Global matches 1 run difficulty easy
    execute if score $Difficulty Global matches 2 run difficulty normal
    execute if score $Difficulty Global matches 3.. run difficulty hard
# 変更記録
    # data modify storage player_manager:god Difficulty.Log append value 0
    # execute store result storage player_manager:god Difficulty.Log[-1] int 1 run scoreboard players get $Difficulty Global
# 通知
    execute if score $Difficulty Global matches 1 run tellraw @s [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[1]","interpret":true}]}]
    execute if score $Difficulty Global matches 2 run tellraw @s [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[2]","interpret":true}]}]
    execute if score $Difficulty Global matches 3.. run tellraw @s [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[3]","interpret":true}]}]

# リセット
    data modify storage player_manager:god Difficulty.Lock set value false
    data remove storage player_manager:god Difficulty.Target
    data remove storage player_manager:god Difficulty.Rejected
