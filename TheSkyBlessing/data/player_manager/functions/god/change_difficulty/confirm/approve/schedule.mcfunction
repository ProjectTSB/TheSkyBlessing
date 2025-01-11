#> player_manager:god/change_difficulty/confirm/approve/schedule
# @within function
#   player_manager:god/change_difficulty/confirm/approve/
#   player_manager:god/change_difficulty/confirm/approve/schedule

# 大丈夫そうなら変更
    execute unless entity @a[predicate=lib:in_battle] run function player_manager:god/change_difficulty/confirm/approve/change
# リセット&ループ
    execute if entity @a[predicate=lib:in_battle] run schedule function player_manager:god/change_difficulty/confirm/approve/schedule 1t replace
