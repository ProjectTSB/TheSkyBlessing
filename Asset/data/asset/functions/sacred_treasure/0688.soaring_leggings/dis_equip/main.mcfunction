#> asset:sacred_treasure/0688.soaring_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0688.soaring_leggings/dis_equip/

# フルセットタグを削除
    execute if entity @s[tag=J3.FullSet] run tag @s remove J3.FullSet