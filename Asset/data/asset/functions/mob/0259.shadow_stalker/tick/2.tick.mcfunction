#> asset:mob/0259.shadow_stalker/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0259.shadow_stalker/tick/1.trigger

# 暗いと完全に透明化する
    execute unless entity @s[tag=77.Dark] unless predicate lib:light_level/min/5 run function asset:mob/0259.shadow_stalker/tick/armor_dis_equip

# 明るいと出現する
    execute if entity @s[tag=77.Dark] if predicate lib:light_level/min/5 run function asset:mob/0259.shadow_stalker/tick/armor_equip