#> asset_manager:sacred_treasure/triggers/sneak/reset_value_not-equal
#
# 各slotについて$SneakThresholdと同値ではない場合、その値を-1に設定します
#
# @within function asset_manager:sacred_treasure/triggers/sneak/

# 初期化
    data modify storage asset:context id set from storage asset:context New.id
# 処理
    execute unless score @s Sneak.Mainhand = $SneakThreshold Temporary run data modify storage asset:context id.mainhand set value -1
    execute unless score @s Sneak.Offhand = $SneakThreshold Temporary run data modify storage asset:context id.offhand set value -1
    execute unless score @s Sneak.Head = $SneakThreshold Temporary run data modify storage asset:context id.head set value -1
    execute unless score @s Sneak.Chest = $SneakThreshold Temporary run data modify storage asset:context id.chest set value -1
    execute unless score @s Sneak.Legs = $SneakThreshold Temporary run data modify storage asset:context id.legs set value -1
    execute unless score @s Sneak.Feet = $SneakThreshold Temporary run data modify storage asset:context id.feet set value -1
# リセット
    scoreboard players reset $SneakThreshold