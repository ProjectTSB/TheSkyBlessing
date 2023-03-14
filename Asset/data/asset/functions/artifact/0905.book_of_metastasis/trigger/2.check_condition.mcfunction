#> asset:artifact/0905.book_of_metastasis/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0905.book_of_metastasis/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く

# 既に発動している場合、テレポートはここで発動してしまう(MP消費したくないし)
    execute if entity @s[tag=CanUsed] as @e[type=area_effect_cloud,tag=P5.Bullet,distance=..150] if score @s P5.UserID = @p[tag=this] UserID run tag @s remove CanUsed
    execute as @e[type=area_effect_cloud,tag=P5.Bullet,distance=..150] if score @s P5.UserID = @p[tag=this] UserID at @s run function asset:artifact/0905.book_of_metastasis/trigger/teleport
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0905.book_of_metastasis/trigger/3.main