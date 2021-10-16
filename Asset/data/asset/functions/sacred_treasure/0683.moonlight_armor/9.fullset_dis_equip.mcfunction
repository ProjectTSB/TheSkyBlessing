#> asset:sacred_treasure/0683.moonlight_armor/9.fullset_dis_equip
#
#
#
# @within function
#   asset:sacred_treasure/0682.moonlight_helm/dis_equip/main
#   asset:sacred_treasure/0683.moonlight_armor/dis_equip/main
#   asset:sacred_treasure/0684.moonlight_leggings/dis_equip/main
#   asset:sacred_treasure/0685.moonlight_boots/dis_equip/main

# Tag削除
    tag @s remove IZ.Fullset
    tag @s remove IZ.Attack

# 専用スコアリセット
    scoreboard players reset @s IZ.SoundLoop
    scoreboard players reset @s IZ.AttackCool

# 補正がある状態なら補正削除
    execute if entity @s[tag=IZ.UnderTheMoon] run function asset:sacred_treasure/0683.moonlight_armor/10.remove_modifier