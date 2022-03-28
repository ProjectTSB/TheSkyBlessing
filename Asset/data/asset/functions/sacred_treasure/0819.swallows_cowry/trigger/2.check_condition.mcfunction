#> asset:sacred_treasure/0819.swallows_cowry/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0819.swallows_cowry/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/feet
# 他にアイテム等確認する場合はここに書く
# かぐや姫装備がフルセットか確認
    function asset:sacred_treasure/0819.swallows_cowry/trigger/2.1.is_fullset
    execute if score $MR.fullset Temporary matches 1 run tag @s add CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0819.swallows_cowry/trigger/3.main