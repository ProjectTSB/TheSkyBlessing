#> api:entity/mob/effect/give
#
# entityにエフェクトを与えます。
#
# @input storage api:
#   Argument.ID : int
#   Argument.Duration? : int (default: Asset | error)
#   Argument.Stack? : int (default: 1)
#   Argument.DurationOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#   Argument.StackOperation? : "forceReplace" | "replace" | "add" (default: "replace")
#   Argument.FieldOverride? : compound
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
# 呼び出し
    function api:entity/mob/effect/core/give
