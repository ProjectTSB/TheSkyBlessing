#> asset:mob/1004.tultaria/tick/move/teleport/end_move
#
# 移動終了
#
# @within function asset:mob/1004.tultaria/tick/move/teleport/move_to_marker

# タグを消す
    tag @s remove RW.InAction

# マーカーも消す
    kill @e[type=marker,tag=RW.TeleportMarker,sort=nearest,limit=1]

# 嘘慣性を設定
    scoreboard players set @s RW.FakeInertia 13