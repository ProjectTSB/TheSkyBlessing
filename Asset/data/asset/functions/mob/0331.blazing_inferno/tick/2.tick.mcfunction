#> asset:mob/0331.blazing_inferno/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0331.blazing_inferno/tick/1.trigger

# 最寄りのモデルのRootをコピー
    execute as @e[type=item_display,tag=8N.ModelRoot,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~

# こっちを向く
    execute facing entity @p feet run tp @s ~ ~ ~ ~ 0

# 一定間隔で攻撃
    scoreboard players add @s 8N.Tick 1

# プレイヤーが周囲にいたらスキル選択
    execute if score @s[tag=!8N.InAction] 8N.Tick matches 40.. if entity @p[distance=..100] run function asset:mob/0331.blazing_inferno/tick/skill_select

# 選択したスキル発動
    execute if entity @s[tag=8N.InAction] run function asset:mob/0331.blazing_inferno/tick/skill_active

# マーカーを回して、その視線先に自分を置く。"8N.RailMove"タグがあるときのみ実行。
    execute as @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~0.5 ~
    execute if entity @s[tag=8N.RailMove] at @e[type=marker,tag=8N.SpawnPoint,sort=nearest,limit=1] run tp @s ^ ^ ^15