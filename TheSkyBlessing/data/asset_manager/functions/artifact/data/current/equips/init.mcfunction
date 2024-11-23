#> asset_manager:artifact/data/current/equips/init
#
#
#
# @within function
#   asset_manager:artifact/data/*/revert_from_current

# 初期化
    data modify storage asset:artifact Equipments set value []
# 適用
    data modify storage asset:artifact Equipments append from storage asset:context id.mainhand
    data modify storage asset:artifact Equipments append from storage asset:context id.offhand
    data modify storage asset:artifact Equipments append from storage asset:context id.feet
    data modify storage asset:artifact Equipments append from storage asset:context id.legs
    data modify storage asset:artifact Equipments append from storage asset:context id.chest
    data modify storage asset:artifact Equipments append from storage asset:context id.head
    data modify storage asset:artifact Equipments append from storage asset:context id.hotbar[]
