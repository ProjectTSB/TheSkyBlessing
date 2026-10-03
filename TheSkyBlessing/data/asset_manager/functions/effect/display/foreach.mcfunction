#> asset_manager:effect/display/foreach
#
# 表示対象の Effect のアイコンを追加する。
#
# @s は表示対象のプレイヤー。DisplayEffects が空でない場合に呼ぶ。
#
# @input as entity
# @within function
#   asset_manager:effect/display/
#   asset_manager:effect/display/foreach

# 表示する Effect のアイコンを追加する
    data modify storage asset:effect TargetEffect set from storage asset:effect DisplayEffects[-1]
    execute if data storage asset:effect TargetEffect{Visible:1b} run function asset_manager:effect/display/icon/

# 次の Effect へ進む
    data remove storage asset:effect DisplayEffects[-1]
    execute if data storage asset:effect DisplayEffects[0] run function asset_manager:effect/display/foreach
