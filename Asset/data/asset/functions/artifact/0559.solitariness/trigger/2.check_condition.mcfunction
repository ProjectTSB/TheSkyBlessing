#> asset:artifact/0559.solitariness/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0559.solitariness/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く
    execute unless data storage asset:context id{head:558,legs:560,feet:561} run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0559.solitariness/trigger/3.main