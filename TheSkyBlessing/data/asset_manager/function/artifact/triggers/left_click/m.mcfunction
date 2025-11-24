#> asset_manager:artifact/triggers/left_click/m
#
# 与えられたIDから神器の処理を発動する
#
# @within function asset_manager:artifact/triggers/left_click/

$function asset:artifact/$(mainhand)/left_click/check_condition
$execute store success storage asset:mob Implement byte 1 run schedule function asset:artifact/$(mainhand)/left_click/check_condition 2147483647t
$schedule clear asset:artifact/$(mainhand)/left_click/check_condition
