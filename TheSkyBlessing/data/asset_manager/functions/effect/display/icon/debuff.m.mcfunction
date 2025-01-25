#> asset_manager:effect/display/icon/debuff.m
#
#
#
# @within function asset_manager:effect/display/icon/

# アイコン
    $data modify storage asset:effect Display.Icon set value ['{"text":"\\uD0FF","font":"effect/common"}','{"text":"\\uC010","font":"space"}','{"text":"\\u$(ID)","font":"effect/icon","color":"$(Color)"}','{"text":"\\uC012","font":"space"}','{"text":"\\uD0C$(RequireClearLv)","font":"effect/common"}','{"text":"\\u0001","font":"space"}','{"text":"\\uD00$(Stack)","font":"effect/common"}']
    data modify storage asset:effect Display.Debuff.Icons append from storage asset:effect Display.Icon[]
# ネガティブスペース
    data modify storage asset:effect Display.Debuff.NegativeSpaces append value '{"text":"\\uC012","font":"space"}'
