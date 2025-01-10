#> world_manager:force_difficulty
#
#
#
# @within function core:tick/

# 数値が正しくないとき用
    execute unless score $Difficulty Global matches 1.. run scoreboard players set $Difficulty Global 1

# 難易度を取得する
    execute store result score $Difficulty Temporary run difficulty
# バニラの難易度を変数と合わせる
    execute unless score $Difficulty Temporary = $Difficulty Global if score $Difficulty Global matches 1 run difficulty easy
    execute unless score $Difficulty Temporary = $Difficulty Global if score $Difficulty Global matches 2 run difficulty normal
    execute unless score $Difficulty Temporary = $Difficulty Global if score $Difficulty Global matches 3.. run difficulty hard

# リセット
    scoreboard players reset $Difficulty Temporary
