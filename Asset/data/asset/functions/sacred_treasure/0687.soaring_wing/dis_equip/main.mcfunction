#> asset:sacred_treasure/0687.soaring_wing/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0687.soaring_wing/dis_equip/

# 専用スコアをリセット
    scoreboard players reset @s J3.MPUseTick

# フルセットタグを削除
    execute if entity @s[tag=J3.FullSet] run tag @s remove J3.FullSet