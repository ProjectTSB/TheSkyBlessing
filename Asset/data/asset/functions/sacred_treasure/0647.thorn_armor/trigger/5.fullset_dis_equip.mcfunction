#> asset:sacred_treasure/0647.thorn_armor/trigger/5.fullset_dis_equip
#
# フルセット解除の処理
#
# @within function
#   asset:sacred_treasure/0646.thorn_helm/trigger/dis_equip/main
#   asset:sacred_treasure/0647.thorn_armor/trigger/dis_equip/main
#   asset:sacred_treasure/0648.thorn_leggings/trigger/dis_equip/main
#   asset:sacred_treasure/0649.thorn_boots/trigger/dis_equip/main

# リセット
    tag @s remove HZ.FullSet
    scoreboard players reset @s HZ.CoolDown