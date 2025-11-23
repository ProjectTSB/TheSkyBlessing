#> api:entity/mob/effect/remove/from_level
#
# entityに付与されているエフェクトのうち、ClearLvと条件を満たすものを全て削除します
#
# @input storage api:
#   Argument.ClearLv : int
#   Argument.ClearType? : "all" | "bad" | "good" (default: "all")
#   Argument.ClearCount? : int (default: 2147483647)
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.ClearType run data modify storage api: Argument.ClearType set value "all"
    execute unless data storage api: Argument.ClearCount run data modify storage api: Argument.ClearCount set value 2147483647
# 呼び出し
    function api:entity/mob/effect/core/remove/from_level/
