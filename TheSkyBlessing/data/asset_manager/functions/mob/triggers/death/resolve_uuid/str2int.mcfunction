#> asset_manager:mob/triggers/death/resolve_uuid/str2int
#
#
#
# @within function asset_manager:mob/triggers/death/resolve_uuid/*

data modify storage asset:mob BitStr set from storage asset:mob DeathLog.display.Lore[-1]
data remove storage asset:mob DeathLog.display.Lore[-1]

execute if data storage asset:mob {BitStr:'{"text":"0"}'} run data modify storage lib: Argument.BitArray append value 0
execute if data storage asset:mob {BitStr:'{"text":"1"}'} run data modify storage lib: Argument.BitArray append value 1

execute if data storage asset:mob DeathLog.display.Lore[0] run function asset_manager:mob/triggers/death/resolve_uuid/str2int