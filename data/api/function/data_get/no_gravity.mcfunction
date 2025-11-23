#> api:data_get/no_gravity
#
# 対象のNoGravityをstorageに軽量に取得します。
#
# @input as player
# @output storage api: NoGravity
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: NoGravity
    data modify storage api: NoGravity set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.NoGravity
