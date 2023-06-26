#> asset_manager:artifact/triggers/sneak/reset_value_not-equal
#
# 各slotについて$SneakThresholdと同値ではない場合、その値を-1に設定します
#
# @within function asset_manager:artifact/triggers/sneak/

# 初期化
    data modify storage asset:context id set from storage asset:context New.id
# 処理
    execute unless score @s Sneak.Mainhand = $SneakThreshold Temporary run data modify storage asset:context id.mainhand set value -1
    execute unless score @s Sneak.Offhand = $SneakThreshold Temporary run data modify storage asset:context id.offhand set value -1
    execute unless score @s Sneak.Head = $SneakThreshold Temporary run data modify storage asset:context id.head set value -1
    execute unless score @s Sneak.Chest = $SneakThreshold Temporary run data modify storage asset:context id.chest set value -1
    execute unless score @s Sneak.Legs = $SneakThreshold Temporary run data modify storage asset:context id.legs set value -1
    execute unless score @s Sneak.Feet = $SneakThreshold Temporary run data modify storage asset:context id.feet set value -1
    execute unless score @s Sneak.Hotbar0 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[0] set value -1
    execute unless score @s Sneak.Hotbar1 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[1] set value -1
    execute unless score @s Sneak.Hotbar2 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[2] set value -1
    execute unless score @s Sneak.Hotbar3 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[3] set value -1
    execute unless score @s Sneak.Hotbar4 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[4] set value -1
    execute unless score @s Sneak.Hotbar5 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[5] set value -1
    execute unless score @s Sneak.Hotbar6 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[6] set value -1
    execute unless score @s Sneak.Hotbar7 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[7] set value -1
    execute unless score @s Sneak.Hotbar8 = $SneakThreshold Temporary run data modify storage asset:context id.hotbar[8] set value -1
# リセット
    scoreboard players reset $SneakThreshold