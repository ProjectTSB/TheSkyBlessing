#> world_manager:force_difficulty
#
#
#
# @within function core:tick/

#> Val
# @private
#declare score_holder $Difficulty

# 難易度を取得する
    execute store result score $Difficulty Temporary run difficulty
# ピースフルの場合の変更処理
    execute if score $Difficulty Temporary matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度をピースフルにすることは出来ません。"}]
    execute if score $Difficulty Temporary matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度はイージーに変更されました。"}]
    execute if score $Difficulty Temporary matches 0 run difficulty easy
# リセット
    scoreboard players reset $Difficulty Temporary