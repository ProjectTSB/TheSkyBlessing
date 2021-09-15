#> asset:sacred_treasure/0661.rainbow_armor/7.fullset_dis_equip
#
#
# @within function asset:sacred_treasure/0660.rainbow_helm/dis_equip/main
# @within function asset:sacred_treasure/0661.rainbow_armor/dis_equip/main
# @within function asset:sacred_treasure/0662.rainbow_leggings/dis_equip/main
# @within function asset:sacred_treasure/0663.rainbow_boots/dis_equip/main

# 全属性の補正を削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,661,0]
# 補正の削除
    function api:player_modifier/defense/base/remove

# タグ削除
    tag @s remove ID.FullSet