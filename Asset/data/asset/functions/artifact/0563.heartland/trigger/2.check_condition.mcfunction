#> asset:artifact/0563.heartland/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0563.heartland/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く
    # 頭(562),脚(564),足(565)がハートランドか確認
    execute unless data storage asset:context id{head:562,legs:564,feet:565} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0563.heartland/trigger/3.main