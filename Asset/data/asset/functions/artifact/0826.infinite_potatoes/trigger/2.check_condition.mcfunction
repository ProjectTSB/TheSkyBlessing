#> asset:artifact/0826.infinite_potatoes/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0826.infinite_potatoes/trigger/1.trigger

#> Val
# @private
#declare score_holder $ItemCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute store result score $ItemCount Temporary run clear @s bone_meal 0
    execute if score $ItemCount Temporary matches ..0 run tag @s remove CanUsed
    execute if score $ItemCount Temporary matches ..0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $ItemCount Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0826.infinite_potatoes/trigger/3.main