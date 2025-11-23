#> api:data_get/root_vehicle
#
# 対象のRootVehicleをstorageに軽量に取得します。
#
# @input as player
# @output storage api: RootVehicle
# @public

# 必要があれば fetch して取得
    function api:data_get/_restore_or_fetch
# outputのstorageに移す
    data remove storage api: RootVehicle
    data modify storage api: RootVehicle set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Data.RootVehicle
