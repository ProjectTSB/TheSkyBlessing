#> asset:sacred_treasure/0647.thorn_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0647.thorn_armor/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,647,5]
# 補正の削除
    function api:player_modifier/defense/water/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,647,5]
# 補正の削除
    function api:player_modifier/defense/thunder/remove

# フルセット解除
    execute if entity @s[tag=HZ.FullSet] run function asset:sacred_treasure/0647.thorn_armor/trigger/6.fullset_dis_equip