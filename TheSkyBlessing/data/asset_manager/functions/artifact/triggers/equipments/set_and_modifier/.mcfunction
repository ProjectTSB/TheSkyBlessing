#> asset_manager:artifact/triggers/equipments/set_and_modifier/
#
#
#
# @within function asset_manager:artifact/triggers/

# 変更された装備の取得
# asset:context New.EquipData への記録も兼ねる
    function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/
# セット装備効果の更新
    function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/
# 装備時補正の更新
    function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/
    function asset_manager:artifact/triggers/equipments/set_and_modifier/add/
# リセット
    data remove storage asset:artifact Temp
