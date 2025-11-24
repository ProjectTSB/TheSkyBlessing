#> api:data_get/absorption_amount
#
# 対象のAbsorptionAmountをstorageに軽量に取得します。
#
# @input as player
# @output storage api: AbsorptionAmount
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: AbsorptionAmount
    data modify storage api: AbsorptionAmount set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.AbsorptionAmount
