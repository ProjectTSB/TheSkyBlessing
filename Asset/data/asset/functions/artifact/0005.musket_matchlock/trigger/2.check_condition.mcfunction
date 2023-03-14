#> asset:artifact/0005.musket_matchlock/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0005.musket_matchlock/trigger/1.trigger

#> prv
# @private
    #declare score_holder $5.GunpowderCount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # 火薬を持ってるかチェック
        execute store result score $5.GunpowderCount Temporary run clear @s gunpowder 0
        execute if score $5.GunpowderCount Temporary matches 0 run tag @s remove CanUsed
        execute if score $5.GunpowderCount Temporary matches 0 run function lib:message/artifact/dont_have_require_items
        scoreboard players reset $5.GunpowderCount Temporary
    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0005.musket_matchlock/trigger/3.main