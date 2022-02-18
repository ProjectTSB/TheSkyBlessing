#> asset_manager:sacred_treasure/triggers/using_item/reset_value_not-equal
#
# 各slotについて$UsingItemThresholdと同値ではない場合、その値を-1に設定します
#
# @within function asset_manager:sacred_treasure/triggers/using_item/

# 初期化
    data modify storage asset:context id set from storage asset:context New.id
# 処理
    execute unless score @s[tag=UsingItem.Mainhand] UsingItem.MainH = $UsingItemThreshold Temporary run data modify storage asset:context id.auto set value -1
    execute unless score @s[tag=UsingItem.Offhand] UsingItem.OffH = $UsingItemThreshold Temporary run data modify storage asset:context id.auto set value -1
    execute unless score @s UsingItem.MainH = $UsingItemThreshold Temporary run data modify storage asset:context id.mainhand set value -1
    execute unless score @s UsingItem.OffH = $UsingItemThreshold Temporary run data modify storage asset:context id.offhand set value -1
# リセット
    scoreboard players reset $UsingItemThreshold