#> player_manager:god/change_difficulty/confirm/listener
#
# リスナー
#
# @within function
#   player_manager:god/change_difficulty/confirm/
#   player_manager:god/change_difficulty/confirm/listener

# チェック
    execute if data storage player_manager:god Difficulty.LockCount as @a[scores={Believe5=1..}] run function player_manager:god/change_difficulty/confirm/on_click
# 減算
    execute if data storage player_manager:god Difficulty.LockCount run function player_manager:god/change_difficulty/confirm/tick
# リセット&ループ
    execute if data storage player_manager:god Difficulty.LockCount run schedule function player_manager:god/change_difficulty/confirm/listener 1t
    execute unless data storage player_manager:god Difficulty.LockCount if data storage player_manager:god Difficulty{Rejected:false} run function player_manager:god/change_difficulty/confirm/approve
