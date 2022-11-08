#> asset:mob/0284.lexiel/tick/move/teleport/end_move
#
# 移動終了
#
# @within function
#   asset:mob/0284.lexiel/tick/move/teleport/move_to_marker
#   asset:mob/0284.lexiel/tick/skill/1.melee_attack/**

# マーカーも消す
    kill @e[type=marker,tag=7W.TeleportMarker,sort=nearest,limit=1]

# 嘘慣性を設定
    scoreboard players set @s 7W.FakeInertia 13