#> api:entity/mob/effect/remove/from_level
#
# entityに付与されているエフェクトのうち、ClearLvと条件を満たすものを全て削除します
#
# @input storage api:
#   Argument.ClearLv : int
#   Argument.ClearType? : "all" | "bad" | "good" (default: "all")
#   Argument.IsSingle? : bool (default: false)
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.ClearType run data modify storage api: Argument.ClearType set value "all"
    execute unless data storage api: Argument.IsSingle run data modify storage api: Argument.IsSingle set value false
# 呼び出し
    execute if data storage api: Argument.ClearLv if entity @s[tag=HasAssetEffect] run function api:entity/mob/effect/core/remove/from_level/
# リセット
    data remove storage api: Argument.ClearLv
    data remove storage api: Argument.ClearType
    data remove storage api: Argument.IsSingle
