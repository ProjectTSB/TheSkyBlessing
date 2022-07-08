#> asset:sacred_treasure/0898.gale_pendant/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function
#   asset:sacred_treasure/0898.gale_pendant/trigger/1.trigger
#   asset:sacred_treasure/0898.gale_pendant/trigger/dis_equip/main

# 神器IDの設定
    data modify storage asset:sacred_treasure TargetID set value 898
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/hotbar
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0898.gale_pendant/trigger/3.main