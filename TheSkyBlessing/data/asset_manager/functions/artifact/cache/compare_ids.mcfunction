#> asset_manager:artifact/cache/compare_ids
#
# 持っている神器の ID を、前に神器のキャッシュを作ったときの ID と比べ、違えばキャッシュを作り直させる
# hotbar の持ち替えのように、持ち物が変わっても ID が同じなら作り直さない
#
# @within function asset_manager:artifact/triggers/

# 今の ID を集める
    function asset_manager:artifact/cache/collect_ids

# キャッシュを作ったときの ID と違えば、作り直させる
    function oh_my_dat:please
    execute store success storage asset:artifact CacheIDsChanged byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactCacheIDs set from storage asset:artifact CacheIDs
    execute if data storage asset:artifact {CacheIDsChanged:true} run tag @s add ArtifactCache.Outdated

# リセット
    data remove storage asset:artifact CacheIDsChanged
