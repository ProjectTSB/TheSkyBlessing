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
# 通知
    execute if score $Difficulty Temporary matches 1 run tellraw @a [{"text":"現在の難易度: "},{"text":"イージー","color":"green"}]
    execute if score $Difficulty Temporary matches 2 run tellraw @a [{"text":"現在の難易度: "},{"text":"ノーマル","color":"yellow"}]
    execute if score $Difficulty Temporary matches 3.. run tellraw @a [{"text":"現在の難易度: "},{"text":"ハード","color":"red"}]
# リセット
    scoreboard players reset $Difficulty Temporary
