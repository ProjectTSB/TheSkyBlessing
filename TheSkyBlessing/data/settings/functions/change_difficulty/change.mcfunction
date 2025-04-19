#> settings:change_difficulty/change
# @within function
#   settings:change_difficulty/on_change_difficulty.m
#   settings:change_difficulty/watch_in_battle

# 難度値を代入
    execute store result score $Difficulty Global run data get storage settings: DifficultyTarget
    execute if score $Difficulty Global matches 1 run difficulty easy
    execute if score $Difficulty Global matches 2 run difficulty normal
    execute if score $Difficulty Global matches 3.. run difficulty hard
# 変更記録
    # data modify storage settings: Difficulty.Log append value 0
    # execute store result storage settings: Difficulty.Log[-1] int 1 run scoreboard players get $Difficulty Global
# 通知
    execute if score $Difficulty Global matches 1 run tellraw @a [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[1]","interpret":true}]}]
    execute if score $Difficulty Global matches 2 run tellraw @a [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[2]","interpret":true}]}]
    execute if score $Difficulty Global matches 3.. run tellraw @a [{"translate":"難易度を %s に変更しました","color":"white","with":[{"storage":"settings:","nbt":"TextRegistry.WithoutHoverEvent[3]","interpret":true}]}]

# リセット
    data remove storage settings: DifficultyChangeLock
    data remove storage settings: DifficultyTarget
