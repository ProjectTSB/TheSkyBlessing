#> asset_manager:effect/display/construct_message/
#
# actionbarに表示するtext componentを構築
#
# @within function asset_manager:effect/tick


# data modify storage asset:effect EffectMessage append value '{"text":"\\u0110","font":"space"}'

execute if data storage asset:effect Display.Buff[0] run function asset_manager:effect/display/construct_message/buff
execute if data storage asset:effect Display.Debuff[0] run function asset_manager:effect/display/construct_message/debuff

# tellraw @a {"storage":"asset:effect","nbt":"Display"}
# tellraw @a {"storage":"asset:effect","nbt":"EffectMessage"}

# リセット
    data remove storage asset:effect Display
