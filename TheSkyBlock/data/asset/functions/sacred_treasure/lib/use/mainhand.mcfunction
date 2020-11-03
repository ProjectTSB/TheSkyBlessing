#> asset:sacred_treasure/lib/use/mainhand
#
# 神器の使用回数を減らします
#
# @within function asset:sacred_treasure/*/main

data modify storage asset:sacred_treasure TargetSlot set value 'mainhand'
function asset_manager:sacred_treasures/core/remaining_decrement