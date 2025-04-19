#> settings:change_difficulty/watch_in_battle
# @within function
#   settings:change_difficulty/end_dismiss_time
#   settings:change_difficulty/watch_in_battle

# 大丈夫そうなら変更
    execute unless entity @a[predicate=lib:in_battle] run function settings:change_difficulty/change
# リセット&ループ
    execute if entity @a[predicate=lib:in_battle] run schedule function settings:change_difficulty/watch_in_battle 1t replace
