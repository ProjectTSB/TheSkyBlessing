#> asset:mob/0301.sinful_thoughts/tick/4.step/tacle
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/4.step/1.step



# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute at @s positioned ~ ~1 ~ if entity @p[gamemode=!spectator,distance=..1] run scoreboard players set @s 8D.Tick 20
# 前方に壁があっても攻撃モーションへ
    execute at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 8D.Tick 30
# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute at @s positioned ~ ~1 ~ if entity @p[gamemode=!spectator,distance=..1] run scoreboard players set @s 8D.Tick 20
# 前方に壁があっても攻撃モーションへ
    execute at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 8D.Tick 30
# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute at @s positioned ~ ~1 ~ if entity @p[gamemode=!spectator,distance=..1] run scoreboard players set @s 8D.Tick 20
# 前方に壁があっても攻撃モーションへ
    execute at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 8D.Tick 30
# 突進して、攻撃があたったらスコアを飛ばして攻撃モーションへ
    execute at @s positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision run function asset:mob/0301.sinful_thoughts/tick/move/teleport
    execute at @s positioned ~ ~1 ~ if entity @p[gamemode=!spectator,distance=..1] run scoreboard players set @s 8D.Tick 20
# 前方に壁があっても攻撃モーションへ
    execute at @s unless block ^ ^ ^1 #lib:no_collision run scoreboard players set @s 8D.Tick 30