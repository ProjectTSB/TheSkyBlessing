#> asset_manager:artifact/give/candidates
# @within function asset_manager:artifact/give/*

#> private
# @private
    #declare score_holder $CandidateLength
    #declare score_holder $Argument.Index
    #declare score_holder $Pulls

# 配列をランダムに動かす
    execute store result score $Argument.Index Lib run function lib:random/
    scoreboard players operation $Argument.Index Lib %= $CandidateLength Temporary
    function lib:array/move
# 引数に代入
    data modify storage api: Argument.ID set from storage lib: Array[-1]
# 呼び出し
    function api:artifact/core/from_id

# リセット&ループ
    data remove storage lib: Array[-1]
    scoreboard players remove $CandidateLength Temporary 1
    scoreboard players remove $Pulls Temporary 1
    execute if score $Pulls Temporary matches 0.. if data storage lib: Array[0] run function api:artifact/core/from_rarity/foreach
