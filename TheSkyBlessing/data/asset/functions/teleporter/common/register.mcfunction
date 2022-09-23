#> asset:teleporter/common/register
#
#
#
# @input storage asset:teleporter
#   ID : int
#   GroupID : string
#   ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
#   Color? : string("white","aqua")(default: "white")
# @within function asset:teleporter/*/register

# パラメータチェック
    execute unless data storage asset:teleporter ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:teleporter GroupID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" GroupID","color":"red"}]
    execute unless data storage asset:teleporter ActivationState run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ActivationState","color":"red"}]
    execute unless data storage asset:teleporter Color run data modify storage asset:teleporter Color set value "white"
# 登録
    execute if entity @p[predicate=api:is_completed_player_chunk_load_waiting_time,distance=..80] run function asset_manager:teleporter/register/
# リセット
    data remove storage asset:teleporter ID
    data remove storage asset:teleporter GroupID
    data remove storage asset:teleporter ActivationState
    data remove storage asset:teleporter Color