#> asset:artifact/0796.log4shell/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0796.log4shell/trigger/1.trigger

#> prv
# @private
    #declare score_holder $M4.LogCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 原木を持っているかチェック
    execute store result score $M4.LogCount Temporary run clear @s #minecraft:logs 0
    execute if score $M4.LogCount Temporary matches 0 run tag @s remove CanUsed
    execute if score $M4.LogCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
    scoreboard players reset $M4.LogCount Temporary

    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0796.log4shell/trigger/3.main