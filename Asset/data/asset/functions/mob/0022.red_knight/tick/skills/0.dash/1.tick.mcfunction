#> asset:mob/0022.red_knight/tick/skills/0.dash/1.tick
#
# マジシャンじみた移動
#
# @within function asset:mob/0022.red_knight/tick/2.3.skill_active

# スキル発動前に飛び上がる
    execute if score @s M.Tick matches 0 run function asset:mob/0022.red_knight/tick/skills/0.dash/jump
    execute if score @s M.Tick matches 15 run function asset:mob/0022.red_knight/tick/skills/0.dash/ready_dash

# パーティクル
    execute if score @s M.Tick matches 15..20 at @s run particle minecraft:dust 0.7 0 0 1 ~ ~1 ~ 0.2 0.5 0.2 1 50

# こっち向く
    execute if score @s M.Tick matches 15.. facing entity @p feet run tp @s ~ ~ ~ ~ ~

# テレポート
    execute if score @s M.Tick matches 15 at @r[distance=..100] run function asset:mob/0022.red_knight/tick/skills/0.dash/2.move

# 複数回実行
    execute if score @s M.Tick matches 20 run scoreboard players add @s[scores={M.LoopCount=..2}] M.LoopCount 1
    execute if score @s M.Tick matches 20 run scoreboard players set @s[scores={M.LoopCount=..2}] M.Tick 13

# リセット
    execute if score @s M.Tick matches 30.. run function asset:mob/0022.red_knight/tick/reset
