#> asset:mob/0022.red_knight/tick/move/teleport/move_to_marker
#
#
#
# @within function asset:mob/0022.red_knight/tick/wait_time/base_move/tick

# 再帰カウントが0なら速度からセット
    scoreboard players operation @s M.MoveTimesPerTick = @s M.Speed

# 移動
    execute at @s facing entity @e[type=marker,tag=M.TeleportMarker] feet run function asset:mob/0022.red_knight/tick/move/teleport/recursive_tp

# マーカーまでたどり着いたら移動をやめる
    execute at @s if entity @e[type=marker,tag=M.TeleportMarker,distance=..3] run function asset:mob/0022.red_knight/tick/move/teleport/end_move
