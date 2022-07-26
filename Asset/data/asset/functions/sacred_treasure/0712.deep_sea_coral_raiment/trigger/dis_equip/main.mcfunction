#> asset:sacred_treasure/0712.deep_sea_coral_raiment/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0712.deep_sea_coral_raiment/trigger/dis_equip/

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    function api:player_modifier/defense/water/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    function api:player_modifier/attack/water/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    function api:player_modifier/heal/remove

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,712,5]
    function api:player_modifier/attack/fire/remove