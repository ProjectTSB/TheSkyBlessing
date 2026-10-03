#> api:entity/mob/effect/remove/from_level
#
# 付与先の Effect を、解除条件と件数の指定に従って削除する。
# 使用後は effect/reset を呼ぶ。
#
# @input
#   as entity
#   storage api:
#       Argument.ClearLv : int
#       Argument.ClearType? : "all" | "bad" | "good" (default: "all")
#       Argument.ClearCount? : int (default: 2147483647)
# @output
#   storage asset:context
#       Duration : int
#       Stack : int
#       this : compound
# @api

# 引数を確認する
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.ClearType run data modify storage api: Argument.ClearType set value "all"
    execute unless data storage api: Argument.ClearCount run data modify storage api: Argument.ClearCount set value 2147483647

# context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ削除予約を設定する
    function api:entity/mob/effect/core/remove/from_level/

# 更新後の context を読み直す
    function asset_manager:effect/context/after_api
