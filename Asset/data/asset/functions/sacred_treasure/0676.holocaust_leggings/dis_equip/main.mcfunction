#> asset:sacred_treasure/0676.holocaust_leggings/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0676.holocaust_leggings/dis_equip/

# 補正の削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,676,4]
# 補正の削除
    function api:player_modifier/attack/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,676,4]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,676,4]
# 補正の削除
    function api:player_modifier/mp_regen/remove
