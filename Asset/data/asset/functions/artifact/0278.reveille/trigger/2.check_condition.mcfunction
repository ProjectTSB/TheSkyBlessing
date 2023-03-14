#> asset:artifact/0278.reveille/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0278.reveille/trigger/1.trigger

#> score
# @private
    #declare score_holder $CurrentTime

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
# 今が夜かどうか確認
    execute store result score $CurrentTime Temporary run time query daytime
    execute if score $CurrentTime Temporary matches 0..12000 run tag @s remove CanUsed
    execute if score $CurrentTime Temporary matches 0..12000 run tellraw @s [{"text": "日中は使用できません"}]

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0278.reveille/trigger/3.main

# リセット
    scoreboard players reset $CurrentTime Temporary