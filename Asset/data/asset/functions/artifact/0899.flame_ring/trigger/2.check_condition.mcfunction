#> asset:artifact/0899.flame_ring/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function
#   asset:artifact/0899.flame_ring/trigger/1.trigger
#   asset:artifact/0899.flame_ring/trigger/dis_equip/main

# 神器IDの設定
    data modify storage asset:artifact TargetID set value 899
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0899.flame_ring/trigger/3.main