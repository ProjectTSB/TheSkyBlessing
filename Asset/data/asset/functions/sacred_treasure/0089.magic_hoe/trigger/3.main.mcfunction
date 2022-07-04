#> asset:sacred_treasure/0089.magic_hoe/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0089.magic_hoe/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く

# 演出
    particle item bone_block ~ ~ ~ 3 3 3 0 50 normal @a
    particle composter ~ ~ ~ 3 3 3 0 100 normal @a
    playsound block.pumpkin.carve player @a ~ ~ ~ 1.5 1
    playsound minecraft:entity.ender_eye.death player @a ~ ~ ~ 1.5 1.5
    
# 処理
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 wheat[age=7] replace wheat
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 beetroots[age=3] replace beetroots
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 carrots[age=7] replace carrots
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 potatoes[age=7] replace potatoes
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 melon_stem[age=7] replace melon_stem
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 pumpkin_stem[age=7] replace pumpkin_stem
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 sweet_berry_bush[age=3] replace sweet_berry_bush
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 cave_vines[berries=true] replace cave_vines
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 cave_vines_plant[berries=true] replace cave_vines_plant
    fill ~-6 ~-6 ~-6 ~6 ~6 ~6 nether_wart[age=3] replace nether_wart