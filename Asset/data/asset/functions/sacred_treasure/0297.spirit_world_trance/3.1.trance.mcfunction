#> asset:sacred_treasure/0297.spirit_world_trance/3.1.trance
#
# 数秒遅れての処理
#
# @within
#   function asset:sacred_treasure/0297.spirit_world_trance/3.main
#   function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance

# TickCount加算
    scoreboard players remove @a[tag=4F.Trance] 4F.TickCount 1

# 帰還処理
    execute if score @a[tag=4F.Trance,limit=1] 4F.TickCount matches ..0 run function asset:sacred_treasure/0297.spirit_world_trance/3.2.reset

# 再帰処理
    execute if score @a[tag=4F.Trance,limit=1] 4F.TickCount matches 1.. run schedule function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance 1t