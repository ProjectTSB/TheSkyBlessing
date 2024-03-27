#> api:entity/mob/effect/give
#
# entityにエフェクトを与えます。
#
# @input storage api:
#   Argument.ID : int
#   Argument.Duration? : int | "infinite" (default: Asset | error)
#   Argument.Stack? : int (default: 1)
#   Argument.DurationOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#   Argument.StackOperation? : "forceReplace" | "replace" | "add" (default: "replace")
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.ID run function api:entity/mob/effect/core/give
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Duration
    data remove storage api: Argument.Stack
    data remove storage api: Argument.DurationOperation
    data remove storage api: Argument.StackOperation