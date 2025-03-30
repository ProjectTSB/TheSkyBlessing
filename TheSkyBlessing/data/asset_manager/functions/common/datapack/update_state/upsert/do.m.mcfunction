#> asset_manager:common/datapack/update_state/upsert/do.m
# @input args
#   Datapack: string
#   State: string
# @within function asset_manager:common/datapack/update_state/upsert/

$execute if data storage asset:datapack DatapackStateBuffer[{Datapack:"$(Datapack)"}] run return run data modify storage asset:datapack DatapackStateBuffer[{Datapack:"$(Datapack)"}].State set value "$(State)"
$data modify storage asset:datapack DatapackStateBuffer append value {Datapack:"$(Datapack)",State:"$(State)"}
