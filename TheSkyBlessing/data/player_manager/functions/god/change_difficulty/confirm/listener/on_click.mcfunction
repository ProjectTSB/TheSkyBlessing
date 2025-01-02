#> player_manager:god/change_difficulty/confirm/listener/on_click
# @within function player_manager:god/change_difficulty/confirm/listener/

# エラー値
    execute unless score @s Believe5 matches 1 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe5 matches 1 run data modify storage player_manager:god Difficulty.Lock set value false
    execute if score @s Believe5 matches 1 run data remove storage player_manager:god Difficulty.LockCount
    execute if score @s Believe5 matches 1 run data modify storage player_manager:god Difficulty.Rejected set value true
    execute if score @s Believe5 matches 1 run tellraw @a [{"selector":"@s"},{"text":"によって、難易度変更が却下されました。"}]
# リセット
    execute unless score @s Believe5 matches 0 run scoreboard players reset @s Believe5
