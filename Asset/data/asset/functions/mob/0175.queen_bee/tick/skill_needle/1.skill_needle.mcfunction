#> asset:mob/0175.queen_bee/tick/skill_needle/1.skill_needle
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# プレイヤーをみる
    execute if score @s 4V.Tick matches 15 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/rotated

# 発砲
    execute if score @s 4V.Tick matches 25..30 positioned ~ ~-1.5 ~ positioned ^ ^ ^1 run function asset:mob/0175.queen_bee/tick/skill_needle/2.skill_needle_ready

# 確率で繰り返す
    execute if score @s 4V.Tick matches 30 if predicate lib:random_pass_per/30 run scoreboard players set @s 4V.Tick 14

# 終了処理
    execute if score @s 4V.Tick matches 30.. run tag @s remove 4V.SkillNeedle
    execute if score @s 4V.Tick matches 30.. run scoreboard players set @s 4V.Tick -50
