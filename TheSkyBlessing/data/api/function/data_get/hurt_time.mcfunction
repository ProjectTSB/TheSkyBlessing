#> api:data_get/hurt_time
#
# 対象のHurtTimeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: HurtTime
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: HurtTime
    data modify storage api: HurtTime set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.HurtTime
