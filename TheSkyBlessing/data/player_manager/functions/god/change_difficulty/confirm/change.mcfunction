#> player_manager:god/change_difficulty/confirm/change
# @within function
#   player_manager:god/change_difficulty/confirm/approve
#   player_manager:god/change_difficulty/confirm/schedule

# 難度値を代入
    execute store result score $Difficulty Global run data get storage player_manager:god Difficulty.Target
    execute if score $Difficulty Global matches 1 run difficulty easy
    execute if score $Difficulty Global matches 2 run difficulty normal
    execute if score $Difficulty Global matches 3.. run difficulty hard
# 変更記録
    # data modify storage player_manager:god Difficulty.Log append value 0
    # execute store result storage player_manager:god Difficulty.Log[-1] int 1 run scoreboard players get $Difficulty Global
# 通知
    execute if score $Difficulty Global matches 1 run tellraw @a [{"text":"難易度を"},{"text":"イージー","color":"green"},{"text":"に変更しました"}]
    execute if score $Difficulty Global matches 2 run tellraw @a [{"text":"難易度を"},{"text":"ノーマル","color":"yellow"},{"text":"に変更しました"}]
    execute if score $Difficulty Global matches 3.. run tellraw @a [{"text":"難易度を"},{"text":"ハード","color":"red"},{"text":"に変更しました"}]

# リセット
    data modify storage player_manager:god Difficulty.Lock set value false
