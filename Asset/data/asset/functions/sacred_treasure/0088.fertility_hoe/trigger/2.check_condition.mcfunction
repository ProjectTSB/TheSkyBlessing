#> asset:sacred_treasure/0088.fertility_hoe/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:sacred_treasure/0088.fertility_hoe/trigger/1.trigger

#> private
# @private
    #declare score_holder $BoneMeal
    #declare score_holder $AroundCrops
    #declare score_holder $LayerCrops
    #declare score_holder $PlayerHeight

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
    # 座標判定
        # yが4未満or252異常だとcloneが失敗するため使用不可にする
        function api:data_get/pos
        execute store result score $PlayerHeight Temporary run data get storage api: Pos[1] 1000
        execute unless score $PlayerHeight Temporary matches 0000..255999 run tag @s remove CanUsed
        execute unless score $PlayerHeight Temporary matches 0000..255999 run function lib:message/sacred_treasure/can_not_use_here


    # 周囲のブロック判定 //y座標によって場合分け
    # //1層ずつ判定とっていくよ
        # 最下層
        execute if score $PlayerHeight Temporary matches 4000.. store result score $LayerCrops Temporary run clone ~-4 ~-4 ~-4 ~4 ~-4 ~4 ~-4 ~-4 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第2層
        execute if score $PlayerHeight Temporary matches 3000.. store result score $LayerCrops Temporary run clone ~-4 ~-3 ~-4 ~4 ~-3 ~4 ~-4 ~-3 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第3層
        execute if score $PlayerHeight Temporary matches 2000.. store result score $LayerCrops Temporary run clone ~-4 ~-2 ~-4 ~4 ~-2 ~4 ~-4 ~-2 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第4層
        execute if score $PlayerHeight Temporary matches 1000.. store result score $LayerCrops Temporary run clone ~-4 ~-1 ~-4 ~4 ~-1 ~4 ~-4 ~-1 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第5層 //プレイヤーと同座標
        execute store result score $LayerCrops Temporary run clone ~-4 ~0 ~-4 ~4 ~0 ~4 ~-4 ~0 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第6層
        execute if score $PlayerHeight Temporary matches ..254999 store result score $LayerCrops Temporary run clone ~-4 ~1 ~-4 ~4 ~1 ~4 ~-4 ~1 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第7層
        execute if score $PlayerHeight Temporary matches ..253999 store result score $LayerCrops Temporary run clone ~-4 ~2 ~-4 ~4 ~2 ~4 ~-4 ~2 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第8層
        execute if score $PlayerHeight Temporary matches ..252999 store result score $LayerCrops Temporary run clone ~-4 ~3 ~-4 ~4 ~3 ~4 ~-4 ~3 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary
        # 第9層
        execute if score $PlayerHeight Temporary matches ..251999 store result score $LayerCrops Temporary run clone ~-4 ~4 ~-4 ~4 ~4 ~4 ~-4 ~4 ~-4 filtered #asset:sacred_treasure/0088.fertility_hoe/grow_target force
        scoreboard players operation $AroundCrops Temporary += $LayerCrops Temporary

        execute if entity @s[tag=CanUsed] if score $AroundCrops Temporary matches 0 run tellraw @s [{"text": "近くに作物がある必要があります。"}]
        execute if score $AroundCrops Temporary matches 0 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:sacred_treasure/0088.fertility_hoe/trigger/3.main

# リセット
    scoreboard players reset $BoneMeal Temporary
    scoreboard players reset $AroundCrops Temporary
    scoreboard players reset $LayerCrops Temporary
    scoreboard players reset $PlayerHeight Temporary