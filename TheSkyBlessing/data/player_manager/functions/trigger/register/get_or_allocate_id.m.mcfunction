#> player_manager:trigger/register/get_or_allocate_id.m
# @input args
#   Key: string
#   Listener: id(minecraft:function)
# @output storage player_manager:trigger
#   Args.ID: int
# @within function player_manager:trigger/register/m

#> Private
# @private
#declare score_holder $TriggerIndex

# 既に割当済みのやつはそのまま返す
    $execute store result storage player_manager:trigger Args.ID int 1 run function player_manager:trigger/register/find_already_registered_listener.m {Key:"$(Key)"}
    execute unless data storage player_manager:trigger Args{ID:0} run return fail

# 割り当てられてないやつは ID を割り当てて登録
    $data modify storage player_manager:trigger Args.Key set value "$(Key)"
    $data modify storage player_manager:trigger Args._ set value "$(Listener)"
    execute store result storage player_manager:trigger Args.ID int 1 run scoreboard players add $TriggerIndex Global 1
    data modify storage player_manager:trigger TriggerListeners append from storage player_manager:trigger Args

# リセット
    data remove storage player_manager:trigger Args.Key
    data remove storage player_manager:trigger Args.Listener
