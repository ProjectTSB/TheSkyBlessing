#> asset:artifact/0844.closed_eyes_of_love/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0844.closed_eyes_of_love/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 844
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く
#範囲内に敵がいるか確認
    execute positioned ~-1 ~2 ~-1 unless entity @e[type=#lib:living,tag=Enemy,dx=1,dy=1,dz=1] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0844.closed_eyes_of_love/trigger/3.main