#> asset:sacred_treasure/0709.mage_robe_lower/trigger/dis_equip/main
#
# 装備を外した時のメイン処理
#
# @within function asset:sacred_treasure/0709.mage_robe_lower/trigger/dis_equip/

# 魔法耐性、魔法攻撃、MP回復量、物理耐性、物理攻撃の削除

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
# 補正の削除
    function api:player_modifier/defense/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
# 補正の削除
    function api:player_modifier/attack/magic/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
# 補正の削除
    function api:player_modifier/mp_regen/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
# 補正の削除
    function api:player_modifier/defense/physical/remove

# UUID
    data modify storage api: Argument.UUID set value [I;1,1,709,4]
# 補正の削除
    function api:player_modifier/attack/physical/remove