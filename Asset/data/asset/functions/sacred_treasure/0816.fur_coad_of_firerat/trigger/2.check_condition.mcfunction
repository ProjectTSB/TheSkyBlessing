#> asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く
# かぐや姫装備がフルセットか確認
    function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/2.1.is_fullset
    execute if score $MO.fullset Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0816.fur_coad_of_firerat/trigger/3.main