#> api:data_get/brain
#
# 対象のBrainをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Brain
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Brain
    data modify storage api: Brain set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Brain
