#> api:entity/mob/effect/remove/from_level
#
# entityに付与されているエフェクトのうち、ClearLvと条件を満たすものを全て削除します
#
# @input storage api:
#   Argument.ClearLv : int
#   Argument.ClearType? : "all" | "bad" | "good" (default: "all")
#   Argument.IsSingle? : bool (default: false)
#   └ Argument.ClearCount? : int (default: null)
# @api

# validate
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.ClearType run data modify storage api: Argument.ClearType set value "all"
    # execute unless data storage api: Argument.IsSingle run
    # execute unless data storage api: Argument.ClearCount run
    execute if data storage api: Argument{IsSingle:true} run data modify storage api: Argument.ClearCount set value 1
# 呼び出し
    execute if data storage api: Argument.ClearLv unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/remove/from_level/
    execute if data storage api: Argument.ClearLv if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/only_initial_apply.m {CB:"api:entity/mob/effect/core/remove/from_level/"}
