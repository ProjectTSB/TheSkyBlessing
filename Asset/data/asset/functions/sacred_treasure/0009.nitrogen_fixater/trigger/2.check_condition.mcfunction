#> asset:sacred_treasure/0009.nitrogen_fixater/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0009.nitrogen_fixater/trigger/1.trigger

#> prv
# @private
    #declare score_holder $9.Potioncount

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto

# 他にアイテム等確認する場合はここに書く
    # 水入り瓶を盛っているかチェック
    execute store result score $9.Potioncount Temporary run clear @s minecraft:potion{Potion:"minecraft:water"} 0
    execute if score $9.Potioncount Temporary matches 0 run tag @s remove CanUsed
    execute if score $9.Potioncount Temporary matches 0 run function lib:message/sacred_treasure/dont_have_require_items
    scoreboard players reset $9.Potioncount Temporary

    
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0009.nitrogen_fixater/trigger/3.main