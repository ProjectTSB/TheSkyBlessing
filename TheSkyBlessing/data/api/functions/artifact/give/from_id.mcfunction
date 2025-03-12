#> api:artifact/give/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute unless data storage api: Argument.ID run return fail
# 呼び出し
    data modify storage api: Argument.Type set value "give"
    function api:artifact/core/from_id
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Type
