#> asset:sacred_treasure/0724.oblivious_snow/trigger/fullset/dis_equip
#
# フルセット解除処理
#
# @within function
#   asset:sacred_treasure/0724.oblivious_snow/trigger/dis_equip/main
#   asset:sacred_treasure/0725.oblivious_snow/trigger/dis_equip/main
#   asset:sacred_treasure/0726.oblivious_snow/trigger/dis_equip/main
#   asset:sacred_treasure/0727.oblivious_snow/trigger/dis_equip/main

# Tag削除
    tag @s remove K4.Fullset

# スコアリセット
    scoreboard players reset @s K4.AttackCD

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:player_modifier/attack/water/remove

# mp回復
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:player_modifier/mp_regen/remove

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:player_modifier/heal/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    #function api:player_modifier/attack/receive_heal/remove
