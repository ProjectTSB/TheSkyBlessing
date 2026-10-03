#> api:entity/mob/effect/give
#
# 付与先に Effect を付与・再付与する。
# 処理中に付与・再付与した Effect の given / re-given は、次の Effect tick で実行する。
# 終了イベント中に同じ ID を付与した場合は、新規付与として given を予約する。
#
# context への更新結果の反映は、同じ付与先の given / re-given / tick 中に限る。
# Argument は呼出後も保持するため、使用後は effect/reset を呼ぶ。
#
# @input
#   as entity
#   storage api:
#       Argument.ID : int
#       Argument.Duration? : int (default: Asset | error)
#       Argument.Stack? : int (default: 1)
#       Argument.DurationOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#       Argument.StackOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#       Argument.FieldOverride? : compound
# @output
#   storage asset:context
#       Duration : int
#       Stack : int
#       this : compound
# @api

# 引数を確認する
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]

# context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ付与・再付与を反映する
    function api:entity/mob/effect/core/give

# 更新後の context を読み直す
    function asset_manager:effect/context/after_api
