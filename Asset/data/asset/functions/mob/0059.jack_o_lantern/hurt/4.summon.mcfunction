#> asset:mob/0059.jack_o_lantern/hurt/4.summon
#
# 眷属を召喚
#
# @within function asset:mob/0059.jack_o_lantern/hurt/2.hurt

# まずスコアリセット
    scoreboard players reset @s 1N.HurtCount

# 眷属を3体召喚
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon
    data modify storage api: Argument.ID set value 224
    execute positioned ~ ~1.7 ~ run function api:mob/summon

# 距離に応じてプレイヤーの前に召喚
    execute if entity @p[tag=Attacker,distance=15..50] at @p[tag=Attacker,distance=15..50] positioned ^ ^1 ^2 run function asset:mob/0059.jack_o_lantern/hurt/5.at_player_summon