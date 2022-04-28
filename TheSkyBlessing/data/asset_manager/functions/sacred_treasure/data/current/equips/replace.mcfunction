#> asset_manager:sacred_treasure/data/current/equips/replace
#
#
#
# @within function
#   asset_manager:sacred_treasure/data/*/revert_from_current
#   asset_manager:sacred_treasure/triggers/equipments/mask_slot/

# 適用
    data modify storage asset:context id.hotbar[8] set from storage asset:sacred_treasure NewEquips[0]
    data modify storage asset:context id.hotbar[7] set from storage asset:sacred_treasure NewEquips[1]
    data modify storage asset:context id.hotbar[6] set from storage asset:sacred_treasure NewEquips[2]
    data modify storage asset:context id.hotbar[5] set from storage asset:sacred_treasure NewEquips[3]
    data modify storage asset:context id.hotbar[4] set from storage asset:sacred_treasure NewEquips[4]
    data modify storage asset:context id.hotbar[3] set from storage asset:sacred_treasure NewEquips[5]
    data modify storage asset:context id.hotbar[2] set from storage asset:sacred_treasure NewEquips[6]
    data modify storage asset:context id.hotbar[1] set from storage asset:sacred_treasure NewEquips[7]
    data modify storage asset:context id.hotbar[0] set from storage asset:sacred_treasure NewEquips[8]
    data modify storage asset:context id.head set from storage asset:sacred_treasure NewEquips[9]
    data modify storage asset:context id.chest set from storage asset:sacred_treasure NewEquips[10]
    data modify storage asset:context id.legs set from storage asset:sacred_treasure NewEquips[11]
    data modify storage asset:context id.feet set from storage asset:sacred_treasure NewEquips[12]
    data modify storage asset:context id.offhand set from storage asset:sacred_treasure NewEquips[13]
    data modify storage asset:context id.mainhand set from storage asset:sacred_treasure NewEquips[14]
# リセット
    data remove storage asset:sacred_treasure NewEquips