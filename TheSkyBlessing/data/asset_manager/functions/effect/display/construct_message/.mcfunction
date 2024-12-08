#> asset_manager:effect/display/construct_message/
#
# actionbarに表示するtext componentを構築
#
# @within function asset_manager:effect/tick

# 開始位置移動
    data modify storage asset:effect EffectMessage append value '{"text":"\\u0098","font":"space"}'
# バフ行
    execute if data storage asset:effect Display.Buff.Icons[0] run function asset_manager:effect/display/construct_message/buff
# デバフ行
    execute if data storage asset:effect Display.Debuff.Icons[0] run function asset_manager:effect/display/construct_message/debuff
# 開始位置移動分ネガティブ
    data modify storage asset:effect EffectMessage append value '{"text":"\\uC098","font":"space"}'

# リセット
    data remove storage asset:effect Display
