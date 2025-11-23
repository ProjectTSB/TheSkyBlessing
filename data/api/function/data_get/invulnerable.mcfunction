#> api:data_get/invulnerable
#
# 対象のInvulnerableをstorageに軽量に取得します。
#
# @input as player
# @output storage api: Invulnerable
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: Invulnerable
    data modify storage api: Invulnerable set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.Invulnerable
