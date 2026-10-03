#> api:entity/mob/effect/get/from_level
#
# entityに付与されている特定のレベルのエフェクトを拾い上げる
#
# 転送先がある場合は、その付与先の保存データを参照する。
# 同じ付与先のイベントで変更した context も取得値へ反映する。
#
# @input
#   as entity
#   storage api:
#       Argument.ClearLv : int
#       Argument.FilterMode? : "Equal" | "GreaterThanOrEqual" | "LessThanOrEqual"
#       Argument.IsBadEffect? : bool
# @output storage api: Return.EffectList
# @api

# 引数を確認する
    execute unless data storage api: Argument.ClearLv run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ClearLv","color":"red"}]
    execute unless data storage api: Argument.FilterMode run data modify storage api: Argument.FilterMode set value "Equal"
    # execute unless data storage api: Argument.IsBadEffect

# context を書き戻した保存データから条件に合う Effect を取得する
    function api:entity/mob/effect/core/get/from_level/

# 取得結果は Return に残し、この API の入力だけを片付ける
    data remove storage api: Argument.ClearLv
    data remove storage api: Argument.FilterMode
    data remove storage api: Argument.IsBadEffect
