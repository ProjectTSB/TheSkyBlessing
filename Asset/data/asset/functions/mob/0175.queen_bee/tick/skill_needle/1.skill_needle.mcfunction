#> asset:mob/0175.queen_bee/tick/skill_needle/1.skill_needle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# プレイヤーをみる
    execute if score @s 4V.Tick matches 15..50 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated

# 終了処理
    execute if score @s 4V.Tick matches 60.. run tag @s remove 4V.SkillNeedle
    execute if score @s 4V.Tick matches 60.. run scoreboard players set @s 4V.Tick -19
