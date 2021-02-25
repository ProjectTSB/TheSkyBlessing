#> asset:sacred_treasure/0297.spirit_world_trance/3.2.reset
#
# 数秒遅れての処理
#
# @within
#   function asset:sacred_treasure/0297.spirit_world_trance/3.1.trance

# ゲームモードを戻す
    execute if score @a[tag=4F.Trance,limit=1] 4F.GameMode matches 0 run gamemode survival @a[tag=4F.Trance]
    execute if score @a[tag=4F.Trance,limit=1] 4F.GameMode matches 1 run gamemode creative @a[tag=4F.Trance]
    execute if score @a[tag=4F.Trance,limit=1] 4F.GameMode matches 2 run gamemode adventure @a[tag=4F.Trance]

# リセット処理
    scoreboard players reset @a[tag=4F.Trance] 4F.TickCount
    scoreboard players reset @a[tag=4F.Trance] 4F.GameMode
    tag @a[tag=4F.Trance] remove 4F.Trance
