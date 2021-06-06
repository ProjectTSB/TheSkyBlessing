#> asset:sacred_treasure/0609.lunar_flare/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0609.lunar_flare/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/lib/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 視点先に敵がいたらCanUsedタグが付く
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0609.lunar_flare/2.1.check_viewpoint

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0609.lunar_flare/3.main