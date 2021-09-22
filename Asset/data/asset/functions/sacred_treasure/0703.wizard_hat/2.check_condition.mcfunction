#> asset:sacred_treasure/0703.wizard_hat/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0703.wizard_hat/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/head
# 他にアイテム等確認する場合はここに書く
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0703.wizard_hat/3.main