#> asset_manager:artifact/triggers/equip/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/new/set_to_current
# 変更のなかったスロットをマスクする
    function asset_manager:artifact/triggers/equipments/mask_slot/
# 装備アイテムのModifier反映
    function asset_manager:artifact/triggers/equip/modifier/
# 神器側に受け渡し
    function #asset:artifact/equip
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/new/revert_from_current
