#> asset:artifact/0297.spirit_world_trance/trigger/3.1.trance
#
# 数秒遅れての処理
#
# @within
#   function asset:artifact/0297.spirit_world_trance/trigger/3.main
#   function asset:artifact/0297.spirit_world_trance/trigger/3.1.trance

# TickCount減算
    scoreboard players remove @a[tag=89.Player,scores={89.TickCount=1..}] 89.TickCount 1

# 帰還処理（一人ずつ処理する）
    execute as @a[tag=89.Player,scores={89.TickCount=0}] run function asset:artifact/0297.spirit_world_trance/trigger/3.2.reset

# 再帰処理
    execute if entity @a[tag=89.Player,scores={89.TickCount=0..}] run schedule function asset:artifact/0297.spirit_world_trance/trigger/3.1.trance 1t