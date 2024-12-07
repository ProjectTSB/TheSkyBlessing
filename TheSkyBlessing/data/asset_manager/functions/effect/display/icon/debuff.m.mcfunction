#> asset_manager:effect/display/icon/construct.m
#
#
#
# @within function asset_manager:effect/display/icon/

$data modify storage asset:effect Display.Icon set value ['{"text":"\\uD0FF","font":"effect/common"}','{"text":"\\uC010","font":"space"}','{"text":"\\u$(ID)","font":"effect/icon"}','{"text":"\\uC012","font":"space"}','{"text":"\\uD0C$(RequireClearLv)","font":"effect/common"}','{"text":"\\u0001","font":"space"}','{"text":"\\uD00$(Stack)","font":"effect/common"}']
data modify storage asset:effect Display.Debuff append from storage asset:effect Display.Icon[]
