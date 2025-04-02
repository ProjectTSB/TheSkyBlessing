#> api:data_get/xp_total
#
# 対象のXpTotalをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpTotal
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: XpTotal
    data modify storage api: XpTotal set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.XpTotal
