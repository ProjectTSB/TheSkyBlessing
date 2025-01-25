#> player_manager:grave/tick/stop_motion
#
#
#
# @within function player_manager:grave/tick/break

# 吹っ飛び方を弄る
    data modify entity @s Motion set value [0d,0d,0d]
# Motionの書き換えが燃やすとなぜか反映される
    data modify entity @s Fire set value 2s
# 拾えるまでの時間を調整する
    data modify entity @s PickupDelay set value 0s
