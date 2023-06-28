#> asset:mob/0311.blazing_inferno/tick/base_move/
#
# ベースムーブ。他のモブの"tick"に当たる部分。
#
# @within function asset:mob/0311.blazing_inferno/tick/2.tick

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!8N.InAction] 8N.Tick matches 40.. if entity @p[distance=..100] run function asset:mob/0311.blazing_inferno/tick/skill_select

# 選択したスキル発動
    execute if entity @s[tag=8N.InAction] run function asset:mob/0311.blazing_inferno/tick/skill_active

# マーカーの視線先に自分を置く。"8N.RailMove"タグがあるときのみ実行。
    execute if entity @s[tag=8N.RailMove] at @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^15

# マーカーを回す。タグによって方向が変わる。
    execute if entity @s[tag=8N.RailMove,tag=8N.Turn.Clockwise] as @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.5 ~
    execute if entity @s[tag=8N.RailMove,tag=8N.Turn.CounterClockwise] as @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-0.5 ~
