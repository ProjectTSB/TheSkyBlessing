#> api:artifact/replace/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api:
#   Argument.ID : int
#   Argument.Slot? : string (default: "mainhand")
# @api

# validate
    execute unless data storage api: Argument.ID run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute unless data storage api: Argument.Slot run data modify storage api: Argument.Slot set value "mainhand"
# 呼び出し
    data modify storage api: Argument.Type set value "replace"
    function api:artifact/core/from_id
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Slot
    data remove storage api: Argument.Type
