#> asset_manager:artifact/give/foreach
#
#
#
# @within function asset_manager:artifact/give/*

#> private
# @private
    #declare score_holder $Pulls

# 引数に代入
    data modify storage api: Argument.ID set from storage api: Picks[-1]
# 呼び出し
    function api:artifact/core/from_id
# 返り値を取得
    execute if data storage api: Argument{Type:"storage"} run data modify storage api: Return.Artifacts append from storage api: Return.Artifact

# リセット & ループ
    data remove storage api: Picks[-1]
    scoreboard players remove $Pulls Temporary 1
    execute if score $Pulls Temporary matches 0.. run function api:artifact/core/from_rarity/foreach
