#> asset:sacred_treasure/0279.c-4/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0279.c-4/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# スニークしながら使ったら発破
    execute if predicate lib:is_sneaking run function asset:sacred_treasure/0279.c-4/trigger/detonate
    execute if predicate lib:is_sneaking run tag @s remove CanUsed
# 個数チェック
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0279.c-4/trigger/check/c4count
# ブロックが視点先にあるかみる
    execute if entity @s[tag=CanUsed] anchored eyes positioned ~ ~1.8 ~ run function asset:sacred_treasure/0279.c-4/trigger/check/blockcheck
# なかったらおわる
    tag @s[tag=!7R.Landing] remove CanUsed
    tag @s remove 7R.Landing
# CanUsed消すやつ
    tas @s[tag=FailRecovery] remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0279.c-4/trigger/3.main