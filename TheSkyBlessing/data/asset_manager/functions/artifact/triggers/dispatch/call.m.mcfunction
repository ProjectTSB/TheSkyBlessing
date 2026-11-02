#> asset_manager:artifact/triggers/dispatch/call.m
#
# 神器の入口を呼ぶ
#
# @input args
#   Namespace : string
#   Entry : string
# @within function asset_manager:artifact/triggers/dispatch/

$function asset:artifact/$(Namespace)/$(Entry)
