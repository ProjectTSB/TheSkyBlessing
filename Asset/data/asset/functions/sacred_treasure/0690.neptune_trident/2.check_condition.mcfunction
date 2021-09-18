#> asset:sacred_treasure/0690.neptune_trident/2.check_condition
#
# 神器の発動条件をチェックします
#
# フルセット時以外はMPを消費する過程があって、フルセット時はMPを消費せず攻撃
#
# @within function asset:sacred_treasure/0690.neptune_trident/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed,tag=!HS.Fullset] run function asset:sacred_treasure/0690.neptune_trident/3.main

# 自身が海神フルセットの場合攻撃力上昇
    execute if entity @s[tag=CanUsed,tag=HS.Fullset] run function asset:sacred_treasure/0690.neptune_trident/4.fullset_attack