#> api:data_get/health
#
# 対象のHealthをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Health
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Health
    data modify storage api: Health set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Health
