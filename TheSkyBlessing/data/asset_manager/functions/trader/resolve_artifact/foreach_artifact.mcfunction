#> asset_manager:trader/resolve_artifact/foreach_artifact
#
# 再帰的にすべての購入した神器を実行者にgiveする
#
# @within function
#   asset_manager:trader/resolve_artifact/
#   asset_manager:trader/resolve_artifact/foreach_artifact

# 末尾のIDを取り出してその神器をCount個giveする
    execute store result score $N Temporary run data get storage asset:trader BoughtArtifacts[-1].Count
    function asset_manager:trader/resolve_artifact/repeat_give

# 末尾データ削除
    data remove storage asset:trader BoughtArtifacts[-1]
# 空じゃなければ再帰
    execute if data storage asset:trader BoughtArtifacts[0] run function asset_manager:trader/resolve_artifact/foreach_artifact