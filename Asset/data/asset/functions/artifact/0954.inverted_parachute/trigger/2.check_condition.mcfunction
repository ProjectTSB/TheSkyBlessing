#> asset:artifact/0954.inverted_parachute/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0954.inverted_parachute/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 954
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[gamemode=!survival,tag=CanUsed] run function lib:message/artifact/can_not_use_here
    execute if entity @s[gamemode=!survival] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0954.inverted_parachute/trigger/3.main