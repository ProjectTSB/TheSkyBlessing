#> asset:sacred_treasure/0986.order_of_healing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0986.order_of_healing/trigger/1.trigger

# ID指定する
    data modify storage asset:sacred_treasure TargetID set value 986
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=RE.Modifier] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0986.order_of_healing/trigger/3.main