#> asset:artifact/0633.elec_armor/trigger/5.fullset_dis_equip
#
#
#
# @within function
#   asset:artifact/0632.elec_helm/trigger/dis_equip/main
#   asset:artifact/0633.elec_armor/trigger/dis_equip/main
#   asset:artifact/0634.elec_leggings/trigger/dis_equip/main
#   asset:artifact/0635.elec_boots/trigger/dis_equip/main

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,633,0]
# 補正の削除
    function api:modifier/defense/thunder/remove

# 演出
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.1 0

# Tag削除
    tag @s remove HL.Fullset