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

# フィールドを取り出す
    data modify storage asset:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this

# リセット
    data remove storage asset:context this
