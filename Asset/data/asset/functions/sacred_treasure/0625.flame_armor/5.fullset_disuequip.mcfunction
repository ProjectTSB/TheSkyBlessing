#> asset:sacred_treasure/0625.flame_armor/5.fullset_disuequip
#
#
#
# @within function asset:sacred_treasure/**/dis_equip/main

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,625,0]
# 補正の削除
    function api:player_modifier/defense/fire/remove

# タグ削除
    tag @s remove HC.FullSet