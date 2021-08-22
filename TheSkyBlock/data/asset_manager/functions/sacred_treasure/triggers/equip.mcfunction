#> asset_manager:sacred_treasure/triggers/equip
#
# 各神器処理へデータ受け渡し
#
# @within function asset_manager:sacred_treasure/triggers/

# イベント発火前に実行するやつ
    function asset_manager:sacred_treasure/core/data/pre_event_put/new
# 全スロットを参照できるidを作る
    data modify storage asset:context id.all set from storage asset:context id
# 変更がある部位のみを選択する
    execute if entity @s[tag=!ChangeMainhand] run data modify storage asset:context id.mainhand set value -1
    execute if entity @s[tag=!ChangeOffhand] run data modify storage asset:context id.offhand set value -1
    execute if entity @s[tag=!ChangeHead] run data modify storage asset:context id.head set value -1
    execute if entity @s[tag=!ChangeChest] run data modify storage asset:context id.chest set value -1
    execute if entity @s[tag=!ChangeLegs] run data modify storage asset:context id.legs set value -1
    execute if entity @s[tag=!ChangeFeet] run data modify storage asset:context id.feet set value -1
# 神器側に受け渡し
    function #asset:sacred_treasure/equip
# allは消す
    data remove storage asset:context id.all
# イベント発火後に実行するやつ
    function asset_manager:sacred_treasure/core/data/post_event_put/new