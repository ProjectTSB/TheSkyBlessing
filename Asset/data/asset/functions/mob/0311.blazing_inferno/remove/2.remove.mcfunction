#> asset:mob/0311.blazing_inferno/remove/2.remove
#
# Mobのremove時の処理
#
# @within function asset:mob/0311.blazing_inferno/remove/1.trigger

# 自分のモデルを削除
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run function animated_java:blazing_inferno/remove/this