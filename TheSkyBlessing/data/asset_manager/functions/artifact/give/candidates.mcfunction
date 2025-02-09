#> asset_manager:artifact/give/candidates
# @within function asset_manager:artifact/give/*

#> private
# @private
    #declare score_holder $CandidateLength
    #declare score_holder $Argument.Index
    #declare score_holder $Pulls

# asset:context idがある場合は退避
    function asset_manager:common/context/id/stash
# 配列をランダムに動かす
    data modify storage lib: Picks set value [-1]
    execute store result score $Argument.Index Lib run function lib:random/
    execute store result storage lib: Picks[-1] int 1 run scoreboard players operation $Argument.Index Lib %= $CandidateLength Temporary
    function lib:array/picks
# 引数に代入
    data modify storage asset:context id set from storage lib: Elements[-1]
    data modify storage asset:context Type set from storage asset:artifact Type
# 呼び出し
    function #asset:artifact/give
# asset:context idを戻す
    function asset_manager:common/context/id/pop

# リセット&ループ
    scoreboard players remove $CandidateLength Temporary 1
    scoreboard players remove $Pulls Temporary 1
    execute if score $Pulls Temporary matches 0.. if data storage lib: Array[0] run function asset_manager:artifact/give/candidates
