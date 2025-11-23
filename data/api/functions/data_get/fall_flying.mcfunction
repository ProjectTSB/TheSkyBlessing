#> api:data_get/fall_flying
#
# 対象のFallFlyingをstorageに軽量に取得します。
#
# @input as player
# @output storage api: FallFlying
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: FallFlying
    data modify storage api: FallFlying set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.FallFlying
