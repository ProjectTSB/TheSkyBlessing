#> asset:artifact/0818.bhuddas_bowl/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0818.bhuddas_bowl/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/legs
# 他にアイテム等確認する場合はここに書く
# かぐや姫装備がフルセットか確認
    function asset:artifact/0818.bhuddas_bowl/trigger/2.1.is_fullset
    execute if score $MQ.Fullset Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0818.bhuddas_bowl/trigger/3.main