#> api:data_get/abilities
#
# 対象のabilitiesをstorageに軽量に取得します。
#
# @input as player
# @output storage api: abilities
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: abilities
    data modify storage api: abilities set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.abilities
