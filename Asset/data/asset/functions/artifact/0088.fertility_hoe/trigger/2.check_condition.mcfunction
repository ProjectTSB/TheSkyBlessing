#> asset:artifact/0088.fertility_hoe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0088.fertility_hoe/trigger/1.trigger

#> private
# @private
    #declare score_holder $BoneMeal

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/check_condition/auto
# 他にアイテム等確認する場合はここに書く
    # ゲームモード確認
        execute if entity @s[gamemode=!survival,gamemode=!creative] run tag @s remove CanUsed
        execute if entity @s[gamemode=!survival,gamemode=!creative] run function lib:message/artifact/can_not_use_here
    # アイテム確認
        execute store result score $BoneMeal Temporary run clear @s bone_meal 0
        execute if score $BoneMeal Temporary matches ..7 run tag @s remove CanUsed
        execute if score $BoneMeal Temporary matches ..7 run function lib:message/artifact/dont_have_require_items

    # 周囲のブロック判定 //y座標によって場合分け //1層ずつ判定とっていくよ
        # 取得
            scoreboard players set $AroundCrops Temporary 0
            execute positioned ~ ~-4 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~-3 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~-2 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~-1 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~ ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~1 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~2 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~3 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check
            execute positioned ~ ~4 ~ run function asset:artifact/0088.fertility_hoe/trigger/2.1.layer_check

        # なかったら
            execute if entity @s[tag=CanUsed] if score $AroundCrops Temporary matches 0 run tellraw @s [{"text": "近くに作物がある必要があります。"}]
            execute if score $AroundCrops Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0088.fertility_hoe/trigger/3.main

# リセット
    scoreboard players reset $BoneMeal Temporary
    scoreboard players reset $AroundCrops Temporary