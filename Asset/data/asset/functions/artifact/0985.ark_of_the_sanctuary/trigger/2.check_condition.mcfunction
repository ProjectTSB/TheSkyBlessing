#> asset:artifact/0985.ark_of_the_sanctuary/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0985.ark_of_the_sanctuary/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# コマンド実行中（Timeをもっている）なら実行できない
    execute if score @s RD.Time matches 1.. run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0985.ark_of_the_sanctuary/trigger/3.main