#> api:data_get/xp_level
#
# 対象のXpLevelをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpLevel
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: XpLevel
    data modify storage api: XpLevel set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.XpLevel
