#> player_manager:god/change_believe/check-1/listener
#
#
#
# @within function
#   player_manager:god/change_believe/check-1/
#   player_manager:god/change_believe/check-1/listener

# チェック
    execute as @a[scores={Believe=1..}] run function player_manager:god/change_believe/check-1/on_click
    execute as @a[scores={Believe=0}] unless score @s InArea matches 1 run scoreboard players reset @s Believe
    execute as @a[scores={Believe=0}] unless score @s InSubArea matches 1..5 run scoreboard players reset @s Believe
# ループ
    execute if entity @a[scores={Believe=0},limit=1] run schedule function player_manager:god/change_believe/check-1/listener 1t
