#> asset:island/common/register
#
# 実際の登録処理
#
# @within function asset:island/*/register/register

# パラメータチェック
    execute unless data storage asset:island ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
    execute unless data storage asset:island Rotation run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Rotation","color":"red"}]
# 登録
    execute if entity @p[predicate=api:is_completed_player_chunk_load_remaining_time,distance=..80] run function asset_manager:island/register/
# リセット
    data remove storage asset:island ID
    data remove storage asset:island Rotation
    data remove storage asset:island BossID