#> asset_manager:artifact/cache/rebuild/fill
#
# ROM にまだ宣言の無い神器を box に give して、共通 give に宣言を書き込ませる
#
# @within function asset_manager:artifact/cache/rebuild/append

# box に give する
    data modify storage api: Argument.ID set from storage asset:artifact CacheTarget.ID
    function api:artifact/box/from_id

# give の中で ROM の参照先が変わっていても、この ID の場所を読めるように呼び直す
    data modify storage api: Argument.Address set from storage asset:artifact CacheTarget.ID
    function api:rom/please
