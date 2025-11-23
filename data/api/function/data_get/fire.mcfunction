#> api:data_get/fire
#
# 対象のFireをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Fire
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Fire
    data modify storage api: Fire set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Fire
