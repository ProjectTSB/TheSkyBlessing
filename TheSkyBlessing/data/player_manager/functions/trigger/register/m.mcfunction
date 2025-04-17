#> player_manager:trigger/register/m
# @input args
#   Listener: id(minecraft:function)
# @output result TriggerIndex
# @within function api:button/create_text_component

#> Private
# @private
#declare score_holder $TriggerIndex

# マクロの値化
    $data modify storage player_manager:trigger Args._ set value "$(Listener)"

# 既に割当済みのヤツはそのまま返す
    execute store result storage player_manager:trigger ID int 1 run function player_manager:trigger/register/find_already_registered_listener.m with storage player_manager:trigger Args
    execute unless data storage player_manager:trigger {ID:0} run data remove storage player_manager:trigger Args
    execute unless data storage player_manager:trigger {ID:0} run return run data get storage player_manager:trigger ID

# 割り当てられてないやつは ID を割り当てて登録
    execute store result storage player_manager:trigger Args.ID int 1 run scoreboard players add $TriggerIndex Global 1
    data modify storage player_manager:trigger TriggerListeners append from storage player_manager:trigger Args

# リセット
    data remove storage player_manager:trigger Args

# ID を返す
    return run scoreboard players get $TriggerIndex Global
