#> api:artifact/core/from_id
#
#
#
# @within function
#   api:artifact/*/from_id
#   api:artifact/core/from_rarity/foreach

# 既存に asset:context id が存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash

# ID
    data modify storage asset:context id set from storage api: Argument.ID
# 神器を give
    execute if data storage api: Argument.ID run function #asset:artifact/give
# 返り値を取得
    execute if data storage api: Argument{Type:"storage"} run data modify storage api: Return.Artifact set from block 10000 0 10000 Items[0]

# 退避させた asset:context id を戻す
    function asset_manager:common/context/id/pop
