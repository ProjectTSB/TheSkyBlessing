#> asset:artifact/0001.book_of_all-seeing/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0001.book_of_all-seeing/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    execute if entity @s[tag=CanUsed] anchored eyes positioned ^ ^ ^ run function asset:artifact/0001.book_of_all-seeing/trigger/find_target_entity
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,type=!player,tag=01.Target,distance=..30] run tellraw @s {"text":"対象を視界に捉えていません。","color":"red"}
    execute unless entity @e[type=#lib:living,type=!player,tag=01.Target,distance=..30] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0001.book_of_all-seeing/trigger/3.main