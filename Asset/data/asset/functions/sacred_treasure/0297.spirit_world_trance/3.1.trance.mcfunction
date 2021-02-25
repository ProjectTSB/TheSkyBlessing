#> asset:sacred_treasure/0297.spirit_world_trance/3.1.trance
#
# 数秒遅れての処理
#
# @within
#   function asset:sacred_treasure/0297.spirit_world_trance/3.main
#   function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance

# TickCount減算
    scoreboard players remove @a[tag=4F.Player,scores={4F.TickCount=1..}] 4F.TickCount 1

# 帰還処理（一人ずつ処理する）
    execute as @a[tag=4F.Player,scores={4F.TickCount=0},limit=1] run function asset:sacred_treasure/0297.spirit_world_trance/3.2.reset

# 再帰処理
    execute if entity @a[tag=4F.Player,scores={4F.TickCount=0..}] run schedule function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance 1t