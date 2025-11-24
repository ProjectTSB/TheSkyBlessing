#> api:data_get/active_effects
#
# 対象のactive_effectsをstorageに軽量に取得します。
#
# @input as player
# @output storage api: active_effects
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: active_effects
    data modify storage api: active_effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.active_effects
