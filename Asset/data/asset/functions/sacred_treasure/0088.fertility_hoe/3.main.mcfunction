#> asset:sacred_treasure/0088.fertility_hoe/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0088.fertility_hoe/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
    # 演出
        particle item bone_block ~ ~ ~ 3 3 3 0 50 normal @a
        particle composter ~ ~ ~ 3 3 3 0 100 normal @a
        playsound block.pumpkin.carve master @a ~ ~ ~ 1 1 1

    # 処理
        clear @s bone_meal 8

        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 wheat[age=7] replace wheat
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 beetroots[age=3] replace beetroots
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 carrots[age=7] replace carrots
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 potatoes[age=7] replace potatoes
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 melon_stem[age=7] replace melon_stem
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 pumpkin_stem[age=7] replace pumpkin_stem
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 sweet_berry_bush[age=3] replace sweet_berry_bush
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 cave_vines[berries=true] replace cave_vines
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 cave_vines_plant[berries=true] replace cave_vines_plant
        fill ~-4 ~-4 ~-4 ~4 ~4 ~4 nether_wart[age=3] replace nether_wart