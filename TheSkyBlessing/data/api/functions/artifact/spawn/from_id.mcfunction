#> api:artifact/spawn/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api:
#   Argument.ID : int
#   Argument.Important? : boolean (default: false)
# @api

# validate
    execute unless data storage api: Argument.ID run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute unless data storage api: Argument.Important run data modify storage api: Argument.Important set value false
# 呼び出し
    data modify storage api: Argument.Type set value "drop"
    function api:artifact/core/from_id
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Important
    data remove storage api: Argument.Type
