#> player_manager:difficulty_check
#
# 難易度を確認して通知します
#
# @within function core:handler/join

#> private
# @private
    #declare score_holder $Difficulty

# 難易度チェック
    function api:global_vars/get_difficulty
    execute store result score $Difficulty Temporary run data get storage api: Return.Difficulty
    scoreboard players operation $Difficulty Temporary < $Difficulty Global
# 通知
    execute if score $Difficulty Temporary matches 1 run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[1]","interpret":true}]}]
    execute if score $Difficulty Temporary matches 2 run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[2]","interpret":true}]}]
    execute if score $Difficulty Temporary matches 3 run tellraw @s [{"translate":"現在の難易度: %s","color":"white","with":[{"storage":"player_manager:god","nbt":"Difficulty.RawText[3]","interpret":true}]}]
# リセット
    scoreboard players reset $Difficulty Temporary
