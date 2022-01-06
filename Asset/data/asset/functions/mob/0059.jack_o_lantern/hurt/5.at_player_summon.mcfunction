#> asset:mob/0059.jack_o_lantern/hurt/5.at_player_summon
#
#
#
# @within function asset:mob/0059.jack_o_lantern/hurt/4.summon

# 2体召喚
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~ ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~ ~ run function api:mob/summon
