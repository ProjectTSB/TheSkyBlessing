#> asset_manager:object/summon/init
#
#
#
# @within function api:object/core/summon

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# リセット
    tag @s remove ObjectInit

# IDをそのまま付与
    execute store result score @s ObjectID run data get storage api: Argument.ID

# 共通タグ付与
    tag @s add AssetObject

# Tickしたくないようであれば
    execute if data storage asset:object {IsTicking:false} run tag @s add Object.DisableTicking

# Object側に実装されてるInitを実行
    function asset_manager:object/init/ with storage asset:context

# EntityStorage呼び出し
    execute if score @s ObjectID matches -2147483648..2147483647 run function oh_my_dat:please

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:object ID
    data remove storage asset:object IsTicking
    data remove storage asset:object Field
