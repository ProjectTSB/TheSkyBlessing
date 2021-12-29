#> asset:sacred_treasure/0088.fertility_hoe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0088.fertility_hoe/trigger/1.trigger

#> private
# @private
    #declare score_holder $BoneMeal
    #declare score_holder $AroundCrops

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # ゲームモード確認
        execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
        execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/sacred_treasure/can_not_use_here
    # アイテム確認
        execute store result score $BoneMeal Temporary run clear @s bone_meal 0
        execute if score $BoneMeal Temporary matches ..7 run tag @s remove CanUsed
        execute if score $BoneMeal Temporary matches ..7 run function lib:message/sacred_treasure/dont_have_require_items
    # 周囲のブロック判定
        execute store result score $AroundCrops Temporary run clone ~-4 ~-4 ~-4 ~4 ~4 ~4 ~-4 ~-4 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        execute if score $AroundCrops Temporary matches 0 run tag @s remove CanUsed
        execute if score $AroundCrops Temporary matches 0 run tellraw @s [{"text": "近くに作物がある必要があります。"}]
    # リセット
        scoreboard players reset $BoneMeal Temporary
        scoreboard players reset $AroundCrops Temporary
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0088.fertility_hoe/trigger/3.main