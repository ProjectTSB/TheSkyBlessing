#> asset:sacred_treasure/0088.fertility_hoe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0088.fertility_hoe/trigger/2.check_condition

#> private
# @private
    #declare score_holder $PlayerHeight

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        particle item bone_block ~ ~ ~ 3 3 3 0 50 normal @a
        particle composter ~ ~ ~ 3 3 3 0 100 normal @a
        playsound block.pumpkin.carve master @a ~ ~ ~ 1 1

    # 処理
        clear @s bone_meal 8

        # 最下層
        execute if score $PlayerHeight Temporary matches 4000.. run function asset:sacred_treasure/0088.fertility_hoe/layer/layer1
        # 第2層
        execute if score $PlayerHeight Temporary matches 3000.. run function asset:sacred_treasure/0088.fertility_hoe/layer/layer2
        # 第3層
        execute if score $PlayerHeight Temporary matches 2000.. run function asset:sacred_treasure/0088.fertility_hoe/layer/layer3
        # 第4層
        execute if score $PlayerHeight Temporary matches 1000.. run function asset:sacred_treasure/0088.fertility_hoe/layer/layer4
        # 第5層 //プレイヤーと同座標
        function asset:sacred_treasure/0088.fertility_hoe/layer/layer5
        # 第6層
        execute if score $PlayerHeight Temporary matches ..254999 run function asset:sacred_treasure/0088.fertility_hoe/layer/layer6
        # 第7層
        execute if score $PlayerHeight Temporary matches ..253999 run function asset:sacred_treasure/0088.fertility_hoe/layer/layer7
        # 第8層
        execute if score $PlayerHeight Temporary matches ..252999 run function asset:sacred_treasure/0088.fertility_hoe/layer/layer8
        # 第9層
        execute if score $PlayerHeight Temporary matches ..251999 run function asset:sacred_treasure/0088.fertility_hoe/layer/layer9