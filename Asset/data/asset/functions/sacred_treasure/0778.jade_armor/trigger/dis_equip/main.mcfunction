#> asset:sacred_treasure/0778.jade_armor/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0778.jade_armor/trigger/dis_equip/

# 補正削除

# 水耐性+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:player_modifier/defense/water/remove

# 水攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:player_modifier/attack/water/remove

# 雷耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:player_modifier/defense/thunder/remove

# MP回復量+4%
    data modify storage api: Argument.UUID set value [I;1,1,778,3]
    function api:player_modifier/mp_regen/remove