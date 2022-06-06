#> api:teleporter/set_activation_state
#
#
#
# @input storage api:
#   Argument.ID : int
#   Argument.ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
# @api

# 処理はそっちにお任せ
    function asset_manager:teleporter/update_activation_state/
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.ActivationState