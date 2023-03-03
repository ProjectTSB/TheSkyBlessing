#> asset_manager:sacred_treasure/data/current/equips/init
#
#
#
# @within function
#   asset_manager:sacred_treasure/data/*/revert_from_current
#   asset_manager:sacred_treasure/triggers/equipments/mask_slot/

# 初期化
    data modify storage asset:sacred_treasure Equipments set value []
# 適用
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.mainhand
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.offhand
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.feet
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.legs
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.chest
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.head
    data modify storage asset:sacred_treasure Equipments append from storage asset:context id.hotbar[]