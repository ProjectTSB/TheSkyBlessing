#> asset:sacred_treasure/0687.soaring_wing/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0687.soaring_wing/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/chest
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=!CanUsed] run function asset:sacred_treasure/0687.soaring_wing/3.main

# フルセットならMP消費無しで特殊効果
    execute if entity @s[tag=J3.Fullset] run function asset:sacred_treasure/0687.soaring_wing/8.fullset_flying