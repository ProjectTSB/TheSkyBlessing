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
# ピースフルの場合
    execute if score $Difficulty Temporary matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度をピースフルにすることは出来ません。"}]
    execute if score $Difficulty Temporary matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度は変更されませんでした。"}]
# Global変数に代入
    execute if score $Difficulty Global matches ..0 run scoreboard players set $Difficulty Global 1
    execute unless score $Difficulty Temporary matches 0 if score $Difficulty Temporary matches ..2 if score $Difficulty Global != $Difficulty Temporary run scoreboard players operation $Difficulty Global = $Difficulty Temporary
# ゲーム難易度の変更
    execute if score $Difficulty Global matches 1 run difficulty easy
    execute if score $Difficulty Global matches 2 run difficulty normal
    execute if score $Difficulty Global matches 3.. run difficulty hard

# リセット
    scoreboard players reset $Difficulty Temporary
