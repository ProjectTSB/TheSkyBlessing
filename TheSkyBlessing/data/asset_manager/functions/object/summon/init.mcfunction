#> asset_manager:object/summon/init
#
#
#
# @within function asset_manager:object/summon/

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:object ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    # execute unless data storage asset:mob Field run
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

# リセット
    data remove storage asset:context this
