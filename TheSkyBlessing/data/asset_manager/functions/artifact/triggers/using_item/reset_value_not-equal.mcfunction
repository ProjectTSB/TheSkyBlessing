#> asset_manager:artifact/triggers/using_item/reset_value_not-equal
#
# 各slotについて$UsingItemThresholdと同値ではない場合、asset:contextの当該slotのidを-1に設定します
#
# @within function asset_manager:artifact/triggers/using_item/

# 初期化 (threshold_lessと違い、より短い秒数で一致していなくても条件を満たす可能性があるため)
    data modify storage asset:context id set from storage asset:context New.id
# 処理
    execute unless score @s UsingItem.Mainhand = $UsingItemThreshold Temporary run data modify storage asset:context id.mainhand set value -1
    execute unless score @s UsingItem.Offhand = $UsingItemThreshold Temporary run data modify storage asset:context id.offhand set value -1
# リセット
    scoreboard players reset $UsingItemThreshold
