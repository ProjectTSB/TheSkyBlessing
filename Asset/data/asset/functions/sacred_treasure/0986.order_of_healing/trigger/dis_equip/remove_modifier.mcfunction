#> asset:sacred_treasure/0986.order_of_healing/trigger/dis_equip/remove_modifier
#
#
#
# @within function asset:sacred_treasure/0986.order_of_healing/trigger/dis_equip/main

# MP消費
    scoreboard players set $Fluctuation Lib -150
    function lib:mp/fluctuation

# 体力回復量
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:player_modifier/heal/remove

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:player_modifier/mp_regen/remove

# 攻撃力
    data modify storage api: Argument.UUID set value [I;1,1,986,7]
    function api:player_modifier/attack/base/remove

tag @s remove RE.Modifier