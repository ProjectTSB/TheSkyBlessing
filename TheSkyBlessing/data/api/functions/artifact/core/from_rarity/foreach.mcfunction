#> asset_manager:artifact/give/foreach
# @within function asset_manager:artifact/give/*

#> private
# @private
    #declare score_holder $Pulls

# 引数に代入
    data modify storage api: Argument.ID set from storage lib: Array[-1]
# 呼び出し
    function api:artifact/core/from_id

# リセット&ループ
    data remove storage lib: Array[-1]
    scoreboard players remove $Pulls Temporary 1
    execute if score $Pulls Temporary matches 0.. run function api:artifact/core/from_rarity/foreach
