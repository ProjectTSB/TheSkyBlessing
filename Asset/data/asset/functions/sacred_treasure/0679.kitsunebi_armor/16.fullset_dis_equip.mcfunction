#> asset:sacred_treasure/0679.kitsunebi_armor/16.fullset_dis_equip
#
#
#
# @within function asset:sacred_treasure/0678.kitsunebi_helm/dis_equip/main
# @within function asset:sacred_treasure/0679.kitsunebi_armor/dis_equip/main
# @within function asset:sacred_treasure/0680.kitsunebi_leggings/dis_equip/main
# @within function asset:sacred_treasure/0681.kitsunebi_boots/dis_equip/main

# Tag削除
    tag @s remove IV.FullSet

# mobの狐火状態の消去
    execute if entity @e[type=#lib:living,type=!player,scores={IV.Kitsunebi=1..}] run scoreboard players reset @s IV.Kitsunebi
    execute if entity @e[type=#lib:living,type=!player,scores={IV.Kitsunebi2=1..}] run scoreboard players reset @s IV.Kitsunebi2