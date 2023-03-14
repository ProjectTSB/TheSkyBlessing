#> asset:artifact/0277.nudist_carnival/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0277.nudist_carnival/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/legs
# 他にアイテム等確認する場合はここに書く

    # このアイテム以外のアイテムを何も持っていないか確認
        execute store result score @s Temporary run clear @s #lib:all 0
        tag @s[scores={Temporary=2..}] remove CanUsed

    # リセット
        scoreboard players reset @s Temporary

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0277.nudist_carnival/trigger/3.main