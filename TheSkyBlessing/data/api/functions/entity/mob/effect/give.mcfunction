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
say api:entity/mob/effect/give
# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" ID","color":"red"}]
# 呼び出し
    execute if data storage api: Argument.ID unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/give
    execute if data storage api: Argument.ID if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m {CB:"api:entity/mob/effect/core/give"}
