#> api:entity/mob/effect/core/get/from_level/filter/level/
# @within function api:entity/mob/effect/core/get/from_level/

# FilterModeに応じて演算子を指定する
    execute if data storage api: Argument{FilterMode:"Equal"} run data modify storage api: Temp.Operator set value "="
    execute if data storage api: Argument{FilterMode:"GreaterThanOrEqual"} run data modify storage api: Temp.Operator set value ">="
    execute if data storage api: Argument{FilterMode:"LessThanOrEqual"} run data modify storage api: Temp.Operator set value "<="
# マクロ処理用に引数を移動する
    data modify storage api: Temp.TargetLv set from storage api: Argument.ClearLv
# それぞれフィルターする
    execute if data storage api: Temp.Effects[0] run function api:entity/mob/effect/core/get/from_level/filter/level/foreach.m with storage api: Temp
