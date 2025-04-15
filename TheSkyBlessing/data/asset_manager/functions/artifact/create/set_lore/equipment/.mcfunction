#> asset_manager:artifact/create/set_lore/equipment/
#
# 装備セットによる効果を設定する
#
# @within function
#   asset_manager:artifact/create/set_lore/
#   asset_manager:artifact/create/set_lore/equipment/

# 登録処理
    data modify storage asset:artifact Temp.Visible set from storage asset:artifact Equipment.Effects[0].Visible
    execute if data storage asset:artifact Temp{Visible:true} run function asset_manager:artifact/create/set_lore/equipment/register
    data remove storage asset:artifact Temp.Visible
# 再帰
    data remove storage asset:artifact Equipment.Effects[0]
    execute if data storage asset:artifact Equipment.Effects[0] run function asset_manager:artifact/create/set_lore/equipment/
