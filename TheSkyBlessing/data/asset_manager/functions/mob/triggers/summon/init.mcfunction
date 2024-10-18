#> asset_manager:mob/triggers/summon/init
#
#
#
# @within function api:mob/core/summon

# validate
    execute unless entity @s run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"データを適用するEntityが存在しません\nasを利用して対象のEntityを実行者にしてください"}]
    execute unless data storage asset:mob ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# リセット
    tag @s remove MobInit

# IDをそのまま付与
    execute store result score @s MobID run data get storage api: Argument.ID

# 共通タグ付与
    tag @s add AssetMob

# Mob側に実装されてるInitを実行
    function asset_manager:mob/init/ with storage asset:context

# データセット
    function asset_manager:mob/triggers/summon/set_data

# EntityStorage呼び出し
    execute if score @s MobID matches -2147483648..2147483647 run function oh_my_dat:please

# フィールドを元に戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:context ID
    data remove storage asset:context Field
