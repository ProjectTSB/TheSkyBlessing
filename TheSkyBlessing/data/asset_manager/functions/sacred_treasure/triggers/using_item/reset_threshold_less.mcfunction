#> asset_manager:sacred_treasure/triggers/using_item/reset_threshold_less
#
# 各slotについて$UsingItemThreshold未満の値の場合、その値を-1に設定します
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

# 処理
    execute unless score @s UsingItem.MainH >= $UsingItemThreshold Temporary run data modify storage asset:context id.mainhand set value -1
    execute unless score @s UsingItem.OffH >= $UsingItemThreshold Temporary run data modify storage asset:context id.offhand set value -1
# リセット
    scoreboard players reset $UsingItemThreshold