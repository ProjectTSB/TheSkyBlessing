#> asset:mob/0284.lexiel/tick/move/teleport/move_to_marker
#
#
#
# @within function asset:mob/0284.lexiel/tick/wait_time/base_move/tick

# 再帰カウントが0なら速度からセット
    scoreboard players operation @s 7W.MoveTimesPerTick = @s 7W.Speed

# 移動
    execute at @s facing entity @e[type=marker,tag=7W.TeleportMarker] feet run function asset:mob/0284.lexiel/tick/move/teleport/recursuve_tp

# マーカーまでたどり着いたら移動をやめる
    execute at @s if entity @e[type=marker,tag=7W.TeleportMarker,distance=..3] run function asset:mob/0284.lexiel/tick/move/teleport/end_move
