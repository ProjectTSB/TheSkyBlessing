#> asset_manager:sacred_treasure/triggers/dis_equip
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/data/old/set_to_current
# 全スロットを参照できるidを作る
    data modify storage asset:context id.all set from storage asset:context id
# 変更のなかったスロットをマスクする
    function asset_manager:sacred_treasure/triggers/equipments/mask_slot/
    tellraw @a [{"text":"dis_equip: "}]
    tellraw @a [{"text":"  m: "},{"storage":"asset:context","nbt":"id.mainhand"},{"text":", o: "},{"storage":"asset:context","nbt":"id.offhand"},{"text":", h: "},{"storage":"asset:context","nbt":"id.head"},{"text":", c: "},{"storage":"asset:context","nbt":"id.chest"},{"text":", l: "},{"storage":"asset:context","nbt":"id.legs"},{"text":", f: "},{"storage":"asset:context","nbt":"id.feet"}]
    tellraw @a [{"text":"  hotbar: "},{"storage":"asset:context","nbt":"id.hotbar"}]
# 神器側に受け渡し
    function #asset:sacred_treasure/dis_equip
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/data/old/revert_from_current