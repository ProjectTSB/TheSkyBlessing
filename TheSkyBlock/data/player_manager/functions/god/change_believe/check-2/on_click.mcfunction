#> player_manager:god/change_believe/check-2/on_click
#
#
#
# @within function player_manager:god/change_believe/check-2/listener

# エラー値
    execute unless score @s Believe matches 2 run function lib:message/invalid_operation
# 正常値
    execute if score @s Believe matches 2 run scoreboard players set @s GodMessagePhase 0
    execute if score @s Believe matches 2 if entity @s[tag=Believe.None] run scoreboard players set @s GodMessagePhase 100
    execute if score @s Believe matches 2 run function player_manager:god/change_believe/change
# リセット
    scoreboard players reset @s Believe