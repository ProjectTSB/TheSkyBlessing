#> api:entity/mob/effect/give
#
# 付与先に Effect を付与・再付与する。
# 同じ付与先の Effect イベント中は、API 前に context を書き戻し、API 後に更新結果を読み直す。
# 処理中に付与・再付与した Effect の given / re-given は、次の Effect tick で実行する。
# 終了イベント中の同 ID の付与は、新規付与の given として扱う。
#
# context への更新結果の反映は、同じ付与先の given / re-given / tick 中に限る。
# Argument は呼出後も保持するため、使用後は effect/reset を呼ぶ。
# 独立した Return 値・戻り値用スコアはない。
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

# API が最新の Duration / Stack / Field を扱えるよう、現在の context を保存する
    function asset_manager:effect/context/before_api

# 保存データへ付与・再付与を反映する
    function api:entity/mob/effect/core/give

# イベントの続きが API 更新後の値を使えるよう、実行中の Effect の context を読み直す
    function asset_manager:effect/context/after_api
