#> player_manager:god/change_difficulty/confirm/tick
#
# ロック解除処理
#
# @within function player_manager:god/change_difficulty/confirm/listener

# ロック解除
    execute store result storage player_manager:god Difficulty.LockCount int 0.9999999999 run data get storage player_manager:god Difficulty.LockCount
    execute unless entity @a[scores={Believe5=0}] run data modify storage player_manager:god Difficulty.LockCount set value 0
    execute if data storage player_manager:god Difficulty{LockCount:0} run data remove storage player_manager:god Difficulty.LockCount
    execute unless data storage player_manager:god Difficulty.LockCount run scoreboard players reset @a Believe5
