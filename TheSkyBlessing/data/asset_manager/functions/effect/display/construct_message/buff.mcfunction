#> asset_manager:effect/display/construct_message/buff
#
# バフ行
#
# @within function asset_manager:effect/display/construct_message/

# 行頭アイコン
    data modify storage asset:effect EffectMessage append value '{"text":"+","font":"effect/common"}'
# エフェクトアイコン
    data modify storage asset:effect EffectMessage append from storage asset:effect Display.Buff.Icons[]
# 行頭アイコンネガティブ
    data modify storage asset:effect EffectMessage append value '{"text":"\\uC010","font":"space"}'
# エフェクトアイコンネガティブ
    data modify storage asset:effect EffectMessage append from storage asset:effect Display.Buff.NegativeSpaces[]
