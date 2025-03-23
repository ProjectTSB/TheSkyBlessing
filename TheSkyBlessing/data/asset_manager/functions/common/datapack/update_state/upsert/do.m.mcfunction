#> asset_manager:common/datapack/update_state/upsert/do.m
#
#
#
# @input args Datapack : string
# @within function asset_manager:common/datapack/update_state/upsert/

$execute if data storage asset:datapack DatapackStateQueue[{Datapack:"$(Datapack)"}] run return run data modify storage asset:datapack DatapackStateQueue[{Datapack:"$(Datapack)"}].State set from storage asset:datapack Elem.State
data modify storage asset:datapack DatapackStateQueue append from storage asset:datapack Elem
