#> asset:mob/1004.tultaria/tick/move/teleport/move_to_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# 再帰カウントが0なら速度からセット
    scoreboard players operation @s RW.MoveTimesPerTick = @s RW.Speed

# 移動
    execute at @s facing entity @e[type=marker,tag=RW.TeleportMarker] feet run function asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp

# マーカーまでたどり着いたら移動をやめる
    execute at @s if entity @e[type=marker,tag=RW.TeleportMarker,distance=..3] run function asset:mob/1004.tultaria/tick/move/teleport/end_move
