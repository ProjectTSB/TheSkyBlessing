#> asset_manager:object/call_method/run_method.m
#
#
#
# @within function asset_manager:object/call_method/

$function asset:object/alias/$(id)/$(method)
$execute store success storage asset:object Implement byte 1 run schedule function asset:object/alias/$(id)/$(method) 2147483647t
$schedule clear asset:object/alias/$(id)/$(method)
