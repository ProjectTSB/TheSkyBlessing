#> asset:teleporter/common/register
#
#
#
# @input storage asset:teleporter
#   ID : int
#   GroupID : string
#   ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
#   Color? : int(default: 16776960)
# @within function asset:teleporter/*/register

# パラメータチェック
    execute unless data storage asset:teleporter ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:teleporter GroupID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" GroupID","color":"red"}]
    execute unless data storage asset:teleporter ActivationState run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ActivationState","color":"red"}]
# 登録
    function asset_manager:teleporter/register/
# リセット
    data remove storage asset:teleporter ID
    data remove storage asset:teleporter GroupID
    data remove storage asset:teleporter ActivationState
    data remove storage asset:teleporter Color
