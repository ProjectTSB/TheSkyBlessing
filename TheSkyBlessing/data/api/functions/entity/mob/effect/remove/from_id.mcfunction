#> api:entity/mob/effect/remove/from_id
#
# 付与先の指定 ID の Effect を削除する。
# 使用後は effect/reset を呼ぶ。
#
# @input
#   as entity
#   storage api:
#       Argument.ID : int
# @output
#   storage asset:context
#       Duration : int
#       Stack : int
#       this : compound
# @api

# 引数を確認する
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]

# context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ削除予約を設定する
    function api:entity/mob/effect/core/remove/from_id

# 更新後の context を読み直す
    function asset_manager:effect/context/after_api
