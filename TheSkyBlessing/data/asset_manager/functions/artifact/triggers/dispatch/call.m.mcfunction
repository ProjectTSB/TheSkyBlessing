#> asset_manager:artifact/triggers/dispatch/call.m
#
# 神器の Field と TSB の値を storage asset:context this に入れて、入口を呼ぶ
#
# @input args
#   Namespace : string
#   Entry : string
# @within function asset_manager:artifact/triggers/dispatch/

$data modify storage asset:context this set from storage asset:artifact ThisByNamespace."$(Namespace)"
$function asset:artifact/$(Namespace)/$(Entry)
