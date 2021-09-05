#> asset:sacred_treasure/0633.elec_armor/5.fullset_dis_equip
#
#
# @within function asset:sacred_treasure/0632.elec_helm/dis_equip/main
# @within function asset:sacred_treasure/0633.elec_armor/dis_equip/main
# @within function asset:sacred_treasure/0634.elec_leggings/dis_equip/main
# @within function asset:sacred_treasure/0635.elec_boots/dis_equip/main

# 補正削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,633,0]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# 演出
    playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 0.4 1.1 0

# タグ削除
    tag @s remove HL.FullSet

    say b