#> asset:mob/0022.red_knight/tick/move/teleport/end_move
#
#
#
# @within function asset:mob/0022.red_knight/tick/move/teleport/move_to_marker

# タグを消す
    tag @s remove M.Move
    tag @s remove M.TickLock

# マーカーも消す
    kill @e[type=marker,tag=M.TeleportMarker,sort=nearest,limit=1]