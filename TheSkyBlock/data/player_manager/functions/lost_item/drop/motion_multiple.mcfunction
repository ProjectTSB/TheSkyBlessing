#> player_manager:lost_item/drop/motion_multiple
#
#
#
# @within function player_manager:lost_item/drop/

# 吹っ飛び方を弄る
    data modify storage player_manager:lost_item Motion set from entity @s Motion
    execute store result storage player_manager:lost_item Motion[0] double 0.0001 run data get storage player_manager:lost_item Motion[0] 20000
    execute store result storage player_manager:lost_item Motion[2] double 0.0001 run data get storage player_manager:lost_item Motion[2] 20000
    data modify entity @s Motion set from storage player_manager:lost_item Motion
# Motionの書き換えが燃やすとなぜか反映される
    data modify entity @s Fire set value 2s
# 拾えるまでの時間を調整する
    data modify entity @s PickupDelay set value 20s
# リセット
    data remove storage lib: Array
    data remove storage player_manager:lost_item Motion