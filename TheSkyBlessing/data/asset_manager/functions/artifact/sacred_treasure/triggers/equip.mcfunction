#> asset_manager:sacred_treasure/triggers/equip
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/new/set_to_current
# 全スロットを参照できるidを作る
    data modify storage asset:context id.all set from storage asset:context id
# 変更のなかったスロットをマスクする
    function asset_manager:sacred_treasure/triggers/equipments/mask_slot/
# 神器側に受け渡し
    function #asset:sacred_treasure/equip
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/new/revert_from_current