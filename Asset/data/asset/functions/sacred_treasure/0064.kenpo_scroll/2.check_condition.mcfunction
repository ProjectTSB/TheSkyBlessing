#> asset:sacred_treasure/0064.kenpo_scroll/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0064.kenpo_scroll/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# メインハンドにアイテムを所持していない場合のみ実行
    execute as @s[nbt={SelectedItem:{}}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0064.kenpo_scroll/3.main