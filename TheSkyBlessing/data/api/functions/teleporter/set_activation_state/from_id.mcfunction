#> api:teleporter/set_activation_state/from_id
#
#
#
# @input storage api:
#   Argument.ID : int
#   Argument.ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 処理はそっちにお任せ
    execute if data storage api: Argument.ID run function asset_manager:teleporter/set_activate_state.m with storage api: Argument
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.ActivationState
