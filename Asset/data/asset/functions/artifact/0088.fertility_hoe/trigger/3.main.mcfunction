#> asset:artifact/0088.fertility_hoe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0088.fertility_hoe/trigger/2.check_condition

#> private
# @private
    #declare score_holder $PlayerHeight

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        particle item bone_block ~ ~ ~ 3 3 3 0 50 normal @a
        particle composter ~ ~ ~ 3 3 3 0 100 normal @a
        playsound block.pumpkin.carve player @a ~ ~ ~ 1 1

    # 処理
        clear @s bone_meal 8

execute positioned ~ ~-4 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~-3 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~-2 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~-1 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~ ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~1 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~2 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~3 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill
execute positioned ~ ~4 ~ run function asset:artifact/0088.fertility_hoe/trigger/3.1.layer_fill