#> asset:mob/1004.tultaria/tick/move/teleport/move_to_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/wait_time/phase1/tick

# 再帰カウントが0なら速度からセット
    scoreboard players operation @s RW.InActionTimesPerTick = @s RW.Speed

# 移動
    function asset:mob/1004.tultaria/tick/move/teleport/recursuve_tp

# マーカーまでたどり着いたら移動をやめる
    execute if entity @e[type=marker,tag=RW.TeleportMarker,distance=..1] run function asset:mob/1004.tultaria/tick/move/teleport/end_move