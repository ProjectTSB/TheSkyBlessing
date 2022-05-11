#> player_manager:god/change_believe/believe2
#
#
#
# @within function player_manager:god/change_believe/change_task

# 共通処理
    tag @s remove Believe.None
# 共通演出
    execute at @s run particle enchant ~ ~2 ~ 0.1 0.1 0.1 1 100
# 各神固有処理
    execute if score @s InSubArea matches 10 run function lib:message/god/flora/believe2
    execute if score @s InSubArea matches 10 run function player_manager:god/flora/believe
    execute if score @s InSubArea matches 11 run function lib:message/god/nyaptov/believe2
    execute if score @s InSubArea matches 11 run function player_manager:god/nyaptov/believe
    execute if score @s InSubArea matches 12 run function lib:message/god/rumor/believe2
    execute if score @s InSubArea matches 12 run function player_manager:god/rumor/believe
    execute if score @s InSubArea matches 13 run function lib:message/god/urban/believe2
    execute if score @s InSubArea matches 13 run function player_manager:god/urban/believe
    execute if score @s InSubArea matches 14 run function lib:message/god/wi-ki/believe2
    execute if score @s InSubArea matches 14 run function player_manager:god/wi-ki/believe