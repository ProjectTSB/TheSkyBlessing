#> asset_manager:trader/resolve_sacred_treasure/give_foreach
#
# 再帰的にすべての購入した神器を実行者にgiveする
#
# @within function asset_manager:trader/resolve_sacred_treasure/*

# 末尾のIDを取り出してその神器をgiveする
    data modify storage api: Argument.ID set from storage asset:trader BoughtIDs[-1]
    function api:sacred_treasure/give/from_id

# 末尾データ削除
    data remove storage asset:trader BoughtIDs[-1]
# 空じゃなければ再帰
    execute if data storage asset:trader BoughtIDs[0] run function asset_manager:trader/resolve_sacred_treasure/give_foreach