#> api:spawner/subtract_hp
#
#
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 既存にasset:context idが存在する場合に備えて退避させる
    function asset_manager:common/context/id/stash
# 代入
    data modify storage asset:context id set from storage api: Argument.ID
# 呼び出し
    execute if data storage api: Argument.ID run function asset_manager:spawner/subtract_hp/
# 退避させたasset:context idを戻す
    function asset_manager:common/context/id/pop
# リセット
    data remove storage api: Argument.ID
