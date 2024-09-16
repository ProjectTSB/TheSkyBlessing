#> asset_manager:object/summon/init
#
#
#
# @within function api:object/core/summon

# フィールドを取り出す
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# リセット
    tag @s remove ObjectInit

# IDをそのまま付与
    execute store result score @s ObjectID run data get storage api: Argument.ID

# 共通タグ付与
    tag @s add AssetObject

# EntityStorage呼び出し
    function oh_my_dat:please
# フィールド
    execute if data storage asset:object FieldOverride run data modify storage asset:object Field merge from storage asset:object FieldOverride
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:object Field

# Object側に実装されてるInitを実行
    function asset_manager:object/init/ with storage asset:context

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ObjectField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:context ID
    data remove storage asset:context Field
