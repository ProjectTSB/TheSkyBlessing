#> api:data_get/glowing
#
# 対象のGlowingをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Glowing
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Glowing
    data modify storage api: Glowing set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Glowing
