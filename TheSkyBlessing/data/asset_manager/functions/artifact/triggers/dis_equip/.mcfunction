#> asset_manager:artifact/triggers/dis_equip/
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:artifact/triggers/

# イベント発火前に実行するやつ
    function asset_manager:artifact/data/old/set_to_current
# 変更のなかったスロットをマスクする
    function asset_manager:artifact/triggers/equipments/mask_slot/
# 外したアイテムのModifier反映
    function asset_manager:artifact/triggers/dis_equip/modifier/
# 神器側に受け渡し
    function #asset:artifact/dis_equip
# イベント発火後に実行するやつ
    function asset_manager:artifact/data/old/revert_from_current
