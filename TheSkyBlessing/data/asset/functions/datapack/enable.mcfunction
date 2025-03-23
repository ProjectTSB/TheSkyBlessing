#> asset:datapack/enable
#
#
#
# @input storage asset:datapack Datapack : Path
# @within function asset:**

execute if data storage global {IsProduction:1b} run data modify storage asset:datapack Suffix set value ".zip"
execute if data storage global {IsProduction:0b} run data modify storage asset:datapack Suffix set value ""
function asset_manager:common/datapack/enable.m with storage asset:datapack
data remove storage asset:datapack Datapack
data remove storage asset:datapack Suffix
