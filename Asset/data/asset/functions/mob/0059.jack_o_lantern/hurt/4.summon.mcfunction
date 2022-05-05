#> asset:mob/0059.jack_o_lantern/hurt/4.summon
#
# 眷属を召喚
#
# @within function asset:mob/0059.jack_o_lantern/hurt/2.hurt

# 眷属を3体召喚
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon

# リセット
    scoreboard players reset @s 1N.HurtCount
