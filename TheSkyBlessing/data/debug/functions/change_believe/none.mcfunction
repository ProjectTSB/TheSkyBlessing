#> debug:change_believe/none
#
# 無信仰に変更します
#
# @within function debug:change_believe/*
# @user

# 共通
    tag @s add Believe.None
# 各神
    execute if entity @s[tag=Believe.Flora] run function player_manager:god/flora/unbelieve
    execute if entity @s[tag=Believe.Nyaptov] run function player_manager:god/nyaptov/unbelieve
    execute if entity @s[tag=Believe.Rumor] run function player_manager:god/rumor/unbelieve
    execute if entity @s[tag=Believe.Urban] run function player_manager:god/urban/unbelieve
    execute if entity @s[tag=Believe.Wi-ki] run function player_manager:god/wi-ki/unbelieve