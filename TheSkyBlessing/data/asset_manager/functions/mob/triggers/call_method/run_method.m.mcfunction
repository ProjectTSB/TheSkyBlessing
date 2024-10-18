#> asset_manager:mob/triggers/call_method/run_method.m
#
#
#
# @within function asset_manager:mob/triggers/call_method/

$function asset:mob/alias/$(id)/$(method)
$execute store success storage asset:mob Implement byte 1 run schedule function asset:mob/alias/$(id)/$(method) 2147483647t
$schedule clear asset:mob/alias/$(id)/$(method)
