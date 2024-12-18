#> asset:teleporter/common/register
#
#
#
# @input storage asset:teleporter
#   ID : int
#   GroupIDs : string
#   ActivationState : string("InvisibleDeactivate","VisibleDeactivate","Activate")
#   Dimension: string("minecraft:overworld","minecraft:the_nether","minecraft:the_end")
#   Color? : int(default: 16777215)
# @within function asset:teleporter/*/register

# パラメータチェック
    execute unless data storage asset:teleporter ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:teleporter GroupIDs run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" GroupIDs","color":"red"}]
    execute unless data storage asset:teleporter ActivationState run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ActivationState","color":"red"}]
    execute unless data storage asset:teleporter Dimension run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Dimension","color":"red"}]
# 登録
    function asset_manager:teleporter/register/
# リセット
    data remove storage asset:teleporter ID
    data remove storage asset:teleporter GroupIDs
    data remove storage asset:teleporter ActivationState
    data remove storage asset:teleporter Dimension
    data remove storage asset:teleporter Color
