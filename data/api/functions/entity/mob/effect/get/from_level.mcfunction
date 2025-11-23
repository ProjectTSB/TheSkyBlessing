#> api:entity/mob/effect/get/from_level
#
# entityに付与されている特定のレベルのエフェクトを拾い上げる
#
# @input
#   as entity
#   storage api:
#       Argument.ClearLv : int
#       Argument.FilterMode? : "Equal" | "GreaterThanOrEqual" | "LessThanOrEqual"
#       Argument.IsBadEffect? : bool
# @output storage api: Return.EffectList
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.FilterMode run data modify storage api: Argument.FilterMode set value "Equal"
    # execute unless data storage api: Argument.IsBadEffect
# call
    function api:entity/mob/effect/core/get/from_level/
# reset
    data remove storage api: Argument.ClearLv
    data remove storage api: Argument.FilterMode
    data remove storage api: Argument.IsBadEffect
