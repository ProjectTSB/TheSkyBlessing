#> asset:mob/0175.queen_bee/tick/skill_summon/1.skill_summon
#
#
#
# @within function asset:mob/0175.queen_bee/tick/4.skill_active

# 突進前の挙動
# プレイヤーをみる
    execute if score @s 4V.Tick matches 10 facing entity @p[gamemode=!spectator] eyes run function asset:mob/0175.queen_bee/tick/move/teleport

# 召喚する
    execute if score @s 4V.Tick matches 15 run function asset:mob/0175.queen_bee/tick/skill_summon/2.skill_summon_bee

# 召喚する
    execute if score @s 4V.Tick matches 20 run function asset:mob/0175.queen_bee/tick/skill_summon/2.skill_summon_bee

# 召喚する
    execute if score @s 4V.Tick matches 25 run function asset:mob/0175.queen_bee/tick/skill_summon/2.skill_summon_bee

# リセット
    execute if score @s 4V.Tick matches 30.. run function asset:mob/0175.queen_bee/tick/reset