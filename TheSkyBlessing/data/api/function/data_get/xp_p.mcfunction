#> api:data_get/xp_p
#
# 対象のXpPをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpP
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: XpP
    data modify storage api: XpP set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.XpP
