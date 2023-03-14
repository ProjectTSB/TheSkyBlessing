#> asset:artifact/0555.catastrophe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0555.catastrophe/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く
    # 頭(554),脚(556),足(557)がカタストロフィか確認
        execute unless data storage asset:context id{head:554,legs:556,feet:557} run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0555.catastrophe/trigger/3.main