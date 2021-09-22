#> asset:sacred_treasure/0689.soaring_boots/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0689.soaring_boots/dis_equip/

#> private
# @private
    #declare tag J3.Fullset

# フルセットタグを削除
    execute if entity @s[tag=J3.Fullset] run tag @s remove J3.Fullset