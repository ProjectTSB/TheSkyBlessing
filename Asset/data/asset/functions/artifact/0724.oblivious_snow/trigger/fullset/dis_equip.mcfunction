#> asset:artifact/0724.oblivious_snow/trigger/fullset/dis_equip
#
# フルセット解除処理
#
# @within function
#   asset:artifact/0724.oblivious_snow/trigger/dis_equip/main
#   asset:artifact/0725.oblivious_snow/trigger/dis_equip/main
#   asset:artifact/0726.oblivious_snow/trigger/dis_equip/main
#   asset:artifact/0727.oblivious_snow/trigger/dis_equip/main

# Tag削除
    tag @s remove K4.Fullset

# スコアリセット
    scoreboard players reset @s K4.AttackCD

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:modifier/attack/water/remove

# mp回復
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:modifier/mp_regen/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,724,0]
    function api:modifier/receive_heal/remove
