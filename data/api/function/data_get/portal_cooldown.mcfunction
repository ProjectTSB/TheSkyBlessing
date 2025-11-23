#> api:data_get/portal_cooldown
#
# 対象のPortalCooldownをstorageに軽量に取得します。
#
# @input as player
# @output storage api: PortalCooldown
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: PortalCooldown
    data modify storage api: PortalCooldown set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.PortalCooldown
