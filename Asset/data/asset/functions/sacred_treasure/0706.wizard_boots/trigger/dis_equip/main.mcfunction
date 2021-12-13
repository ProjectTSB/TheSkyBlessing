#> asset:sacred_treasure/0706.wizard_boots/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0706.wizard_boots/trigger/dis_equip/

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
# 補正の削除
    function api:player_modifier/attack/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,706,3]
# 補正の削除
    function api:player_modifier/mp_regen/remove
