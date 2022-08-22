#> asset:sacred_treasure/0769.shaking_splash/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:sacred_treasure/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 非スニークの場合、LatestUseTickと現在の比較して使用可能かどうか検知
    execute if entity @s[tag=CanUsed,predicate=!lib:is_sneaking] run function asset:sacred_treasure/0769.shaking_splash/trigger/2.check_condition/check_cool_down

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0769.shaking_splash/trigger/3.main