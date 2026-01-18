#> api:damage/core/modify/pre/non-player
#
#
#
# @within function api:damage/pre_modifier

# 設定された諸々
    data modify storage api: Return.PreModifier set from storage api: Argument

# MobUUID
    execute store result storage api: Return.PreModifier.MobUUID int 1 run scoreboard players get @s MobUUID
# CustonmName
    data modify storage api: Return.PreModifier.Name set from entity @s CustomName
# AttackerType
    data modify storage api: Return.PreModifier.AttackerType set value "non-player"

# 
