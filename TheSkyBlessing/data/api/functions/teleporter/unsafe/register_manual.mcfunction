#> api:teleporter/unsafe/register_manual
#
#
# @input storage api:
#   Argument.ID: int
#   Argument.GroupIDs: [string]
#   Argument.Color?: [int @ 0..255] @ 3
#   Argument.ActivationState: enum
#   Argument.Dimension: string
#   Argument.Pos: [double] @ 3
# @api

function asset_manager:teleporter/common/append_or_reorder_teleporters.m with storage api: Argument
data modify storage asset:teleporter Teleporters[-1].ID set from storage api: Argument.ID
data modify storage asset:teleporter Teleporters[-1].GroupIDs set from storage api: Argument.GroupIDs
data modify storage asset:teleporter Teleporters[-1].Data.ActivationState set from storage api: Argument.ActivationState
execute if data storage api: Argument.Color run data modify storage asset:teleporter Color set from storage api: Argument.Color
execute if data storage api: Argument.Color run function asset:teleporter/common/calculate_and_insert_color_data
execute if data storage api: Argument.Color run data remove storage asset:teleporter Color
data modify storage asset:teleporter Teleporters[-1].Dimension set from storage api: Argument.Dimension
data modify storage asset:teleporter Teleporters[-1].Pos set from storage api: Argument.Pos

data remove storage api: Argument.ID
data remove storage api: Argument.GroupIDs
data remove storage api: Argument.Color
data remove storage api: Argument.ActivationState
data remove storage api: Argument.Dimension
data remove storage api: Argument.Pos
