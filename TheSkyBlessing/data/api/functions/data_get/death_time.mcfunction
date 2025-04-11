#> api:data_get/death_time
#
# 対象のDeathTimeをstorageに軽量に取得します。
#
# @input as player
# @output storage api: DeathTime
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: DeathTime
    data modify storage api: DeathTime set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.DeathTime
