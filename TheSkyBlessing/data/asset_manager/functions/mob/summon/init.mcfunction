#> asset_manager:mob/summon/init
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

# データセット
    function asset_manager:mob/summon/set_data

# PreInitInterceptFn があるなら呼び出す
    execute if data storage api: Argument.PreInitInterceptFn run function asset_manager:mob/summon/call_pre_init_intercept_fn.m with storage api: Argument

# Mob側に実装されてるInitを実行
    function asset_manager:mob/triggers/init/ with storage asset:context

# EntityStorage呼び出し
    execute if score @s MobID matches -2147483648..2147483647 run function oh_my_dat:please

# フィールドを元に戻す
    execute if score @s MobID matches -2147483648..2147483647 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobField set from storage asset:context this

# リセット
    data remove storage asset:context this
    data remove storage asset:context ID
    data remove storage asset:context Field
