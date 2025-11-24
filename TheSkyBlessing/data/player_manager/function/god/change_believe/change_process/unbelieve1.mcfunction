#> player_manager:god/change_believe/change_process/unbelieve1
#
#
#
# @within function player_manager:god/change_believe/change_process/task

# 共通処理
    effect give @s blindness 11 0 true
    effect give @s slowness 11 5 true
# 各神固有処理
    execute if entity @s[tag=Believe.Flora] run function lib:message/god/flora/unbelieve1
    execute if entity @s[tag=Believe.Nyaptov] run function lib:message/god/nyaptov/unbelieve1
    execute if entity @s[tag=Believe.Rumor] run function lib:message/god/rumor/unbelieve1
    execute if entity @s[tag=Believe.Urban] run function lib:message/god/urban/unbelieve1
    execute if entity @s[tag=Believe.Wi-ki] run function lib:message/god/wi-ki/unbelieve1
