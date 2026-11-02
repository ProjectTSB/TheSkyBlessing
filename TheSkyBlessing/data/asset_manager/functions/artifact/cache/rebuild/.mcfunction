#> asset_manager:artifact/cache/rebuild/
#
# offhand・防具・hotbar の神器の ROM の宣言から、event ごとに呼ぶ入口のキャッシュ (ArtifactCache) を作り直して保存する
# 同じ ID の神器を複数持っていても、入口は 1 回だけキャッシュに入れる
#
# @within function asset_manager:artifact/triggers/

# 作り直す前のキャッシュを、前の持ち物で呼ぶ event のために残す
    data modify storage asset:artifact PreviousCache set from storage asset:artifact Cache

# 神器の ID を集める (持ち物の比較で集めていなければ)
    execute unless data storage asset:artifact CacheIDs run function asset_manager:artifact/cache/collect_ids

# ID ごとに宣言をキャッシュへ足す
# 神器でない slot の ID (-2) は、足し終えた ID として先に入れておく
    data modify storage asset:artifact Cache set value []
    data modify storage asset:artifact CachedIDs set value [{ID:-2}]
    data modify storage asset:artifact CacheTargets set from storage asset:artifact CacheIDs
    function asset_manager:artifact/cache/rebuild/foreach

# キャッシュと、キャッシュを作ったときの ID を保存する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactCache set from storage asset:artifact Cache
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactCacheIDs set from storage asset:artifact CacheIDs
    tag @s remove ArtifactCache.Outdated

# リセット
    data remove storage asset:artifact CacheTargets
    data remove storage asset:artifact CachedIDs
    data remove storage asset:artifact CacheTarget
