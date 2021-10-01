#> asset:sacred_treasure/0686.soaring_helm/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0686.soaring_helm/dis_equip/

# フルセットタグを削除
    execute if entity @s[tag=J3.Fullset] run tag @s remove J3.Fullset