#> world_manager:force_difficulty
#
#
#
# @within function core:tick/

# 難易度を取得する
    execute unless score $Difficulty Global matches 3.. store result score $Difficulty Global run difficulty
# ピースフルの場合の変更処理
    execute if score $Difficulty Global matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度をピースフルにすることは出来ません。"}]
    execute if score $Difficulty Global matches 0 run tellraw @a [{"storage":"global","nbt":"Prefix.FAILED"},{"text":"難易度はイージーに変更されました。"}]
    execute if score $Difficulty Global matches 0 run difficulty easy
