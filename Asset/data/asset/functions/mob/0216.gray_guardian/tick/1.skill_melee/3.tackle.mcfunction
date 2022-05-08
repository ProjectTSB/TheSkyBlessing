#> asset:mob/0216.gray_guardian/tick/1.skill_melee/3.tackle
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/1.skill_melee/1.skill_melee

# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute at @s if entity @p[gamemode=!spectator,distance=..2] run scoreboard players set @s 60.Tick 999
    execute at @s positioned ~ ~1 ~ run particle end_rod ^0 ^ ^0 0 0 0 0 1
# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute at @s if entity @p[gamemode=!spectator,distance=..2] run scoreboard players set @s 60.Tick 999
    execute at @s positioned ~ ~1 ~ run particle end_rod ^0 ^ ^0 0 0 0 0 1
# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 run function asset:mob/0216.gray_guardian/tick/move/teleport
    execute at @s if entity @p[gamemode=!spectator,distance=..2] run scoreboard players set @s 60.Tick 999
    execute at @s positioned ~ ~1 ~ run particle end_rod ^0 ^ ^0 0 0 0 0 1

# 演出
    execute if score @s 60.Tick matches 999 run playsound entity.phantom.bite hostile @a ~ ~ ~ 1 0