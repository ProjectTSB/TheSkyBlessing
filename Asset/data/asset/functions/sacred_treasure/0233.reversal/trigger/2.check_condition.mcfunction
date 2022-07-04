#> asset:sacred_treasure/0233.reversal/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0233.reversal/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 体力が10以下か確認
    function api:data_get/health
    execute store result score @s Temporary run data get storage api: Health 1
    sco

    execute if score @s Temporary matches 11.. run function asset:sacred_treasure/0233.reversal/trigger/error_message
    execute if score @s Temporary matches 11.. run tag @s remove CanUsed
    scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0233.reversal/trigger/3.main