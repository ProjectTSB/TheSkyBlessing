#> player_manager:trigger/register/m
# @input args
#   Key: string
#   Listener: id(minecraft:function)
# @output result TriggerIndex
# @within function api:button/create_text_component

# Listener に紐付く ID を用意する
    $function player_manager:trigger/register/get_or_allocate_id.m {Key:"$(Key)",Listener:"$(Listener)"}
# OMD に有効な ID として登録する
    function player_manager:trigger/register/enable.m with storage player_manager:trigger Args

# りた～ん
    return run function lib:macro/get_and_remove.m {Source:"storage player_manager:trigger Args.ID"}
