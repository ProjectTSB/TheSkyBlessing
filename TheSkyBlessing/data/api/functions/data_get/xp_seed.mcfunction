#> api:data_get/xp_seed
#
# 対象のXpSeedをstorageに軽量に取得します。
#
# @input as player
# @output storage api: XpSeed
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: XpSeed
    data modify storage api: XpSeed set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.XpSeed
