#> asset:mob/0311.blazing_inferno/tick/base_move/
#
# ベースムーブ。他のモブの"tick"に当たる部分。
#
# @within function asset:mob/0311.blazing_inferno/tick/2.tick

# 予告動作
    execute if score @s[tag=!8N.InAction] 8N.Tick matches 20 if entity @p[distance=..100] run function asset:mob/0311.blazing_inferno/tick/base_move/windup

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!8N.InAction] 8N.Tick matches 40.. if entity @p[distance=..100] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_select

# 選択したスキル発動
    execute if entity @s[tag=8N.InAction] run function asset:mob/0311.blazing_inferno/tick/base_move/skill_active

# マーカーの視線先に自分を置く。"8N.RailMove"タグがあるときのみ実行。
    execute if entity @s[tag=8N.RailMove] at @e[type=marker,tag=8N.Marker.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^12

# HP50%以下のとき、パーティクルをまとう
    execute if entity @s[tag=8N.Health.50Per] run particle large_smoke ~ ~1 ~ 0.3 0.5 0.3 0.01 1 force @a[distance=..30]

# マーカーを回す。タグによって方向が変わる。
    # 本気前
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.3 ~
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=!8N.Health.50Per,tag=!8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-0.3 ~

    # 本気後
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=8N.Health.50Per,tag=!8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.4 ~
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=8N.Health.50Per,tag=!8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-0.4 ~

    # ハイスピード
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise,tag=8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~2 ~
        execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise,tag=8N.Turn.HighSpeed] as @e[type=marker,tag=8N.Marker.SpawnPoint,distance=..60,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-2 ~