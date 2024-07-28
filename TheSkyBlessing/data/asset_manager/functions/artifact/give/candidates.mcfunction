#> asset_manager:artifact/give/candidates
# @within function asset_manager:artifact/give/*

#> private
# @private
    #declare score_holder $Pulls

# asset:context idがある場合は退避
    function asset_manager:common/context_id/stash
# 引数に代入
    data modify storage asset:context id set from storage lib: Array[-1]
    data modify storage asset:context Type set from storage asset:artifact Type
# 呼び出し
    function #asset:artifact/give
# asset:context idを戻す
    function asset_manager:common/context_id/pop

# リセット&ループ
    data remove storage lib: Array[-1]
    scoreboard players remove $Pulls Temporary 1
    execute if score $Pulls Temporary matches 0.. if data storage lib: Array[0] run function asset_manager:artifact/give/candidates
