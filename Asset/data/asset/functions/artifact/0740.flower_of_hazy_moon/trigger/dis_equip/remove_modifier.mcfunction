#> asset:artifact/0740.flower_of_hazy_moon/trigger/dis_equip/remove_modifier
#
#
#
# @within function asset:artifact/0740.flower_of_hazy_moon/trigger/dis_equip/main

#> Private
# @private
    #declare score_holder $Fluctuation

# MP消費
    scoreboard players set $Fluctuation Lib -150
    data modify storage lib: Argument.DisableLog set value 1b
    function lib:mp/fluctuation

# 魔法攻撃
    data modify storage api: Argument.UUID set value [I;1,1,740,7]
    function api:modifier/attack/magic/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,1,740,7]
    function api:modifier/receive_heal/remove

# Tag削除
    tag @s remove KK.Modifier