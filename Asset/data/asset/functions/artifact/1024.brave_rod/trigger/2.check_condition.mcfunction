#> asset:artifact/1024.brave_rod/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1024.brave_rod/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed,tag=!SG.FinishCoolTime] run function asset:artifact/1024.brave_rod/trigger/3.main