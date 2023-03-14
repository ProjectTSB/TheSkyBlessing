#> asset:artifact/0468.raging_demon/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0468.raging_demon/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# 周囲10M以内に体力が20以下の敵がいるか確認
    execute if entity @s[tag=CanUsed] run function asset:artifact/0468.raging_demon/trigger/check_target

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0468.raging_demon/trigger/3.main