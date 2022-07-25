#> asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0713.deep_sea_coral_leggings/trigger/dis_equip/

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/defense/water/remove

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/defense/magic/remove

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/attack/water/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/defense/physical/remove

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,713,4]
    function api:player_modifier/attack/physical/remove
