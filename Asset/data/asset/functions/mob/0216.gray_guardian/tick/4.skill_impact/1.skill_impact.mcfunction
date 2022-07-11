#> asset:mob/0216.gray_guardian/tick/4.skill_impact/1.skill_impact
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/4.skill_active

# 最初に実行
    execute if score @s 60.Tick matches 0 run function asset:mob/0216.gray_guardian/tick/4.skill_impact/2.first_tick
# 地面に付くまでTP
    execute if score @s 60.Tick matches 0..15 at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute if score @s 60.Tick matches 0..15 at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute if score @s 60.Tick matches 0..15 at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute if score @s 60.Tick matches 0..15 at @s if block ~ ~-0.5 ~ #lib:air positioned ~ ~-0.5 ~ run function asset:mob/0216.gray_guardian/tick/move/teleport

# 地面をぶっ叩く
    execute if score @s 60.Tick matches 16 run function asset:mob/0216.gray_guardian/tick/4.skill_impact/3.impact

# 角度戻す
    execute if score @s 60.Tick matches 80 run execute rotated ~40 0 run function asset:mob/0216.gray_guardian/tick/move/teleport
# リセット
    execute if score @s 60.Tick matches 80 run function asset:mob/0216.gray_guardian/tick/reset