#> asset:teleporter/common/register
#
#
#
# @input storage asset:teleporter
#   ID : int
#   GroupID : string
#   ActivationKind : string("InvisibleDeactivate","VisibleDeactivate","Activate")
#   Color? : string("white","aqua")(default: "white")
# @within function asset:teleporter/*/register/register

# パラメータチェック
    execute unless data storage asset:teleporter ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:teleporter GroupID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" GroupID","color":"red"}]
    execute unless data storage asset:teleporter ActivationKind run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ActivationKind","color":"red"}]
    execute unless data storage asset:teleporter Color run data modify storage asset:teleporter Color set value "white"
# 登録
    function asset_manager:teleporter/register/
# リセット
    data remove storage asset:teleporter ID
    data remove storage asset:teleporter GroupID
    data remove storage asset:teleporter ActivationKind
    data remove storage asset:teleporter Color