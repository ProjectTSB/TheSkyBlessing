#> asset_manager:object/summon/summon.m
#
# 与えられたIDそのままの関数を実行する
#
# @within function asset_manager:object/summon/

$function asset:object/alias/$(id)/summon
$execute store success storage asset:object Implement byte 1 run schedule function asset:object/alias/$(id)/summon 2147483647t
$schedule clear asset:object/alias/$(id)/summon
