#> player_manager:god/mercy/listener
#
#
#
# @within function
#   player_manager:god/mercy/
#   player_manager:god/mercy/listener

# チェック
    execute as @a[scores={Believe3=1..}] run function player_manager:god/mercy/on_click
    execute as @a[scores={Believe3=0}] unless score @s InArea matches 1 run scoreboard players reset @s Believe3
    execute as @a[scores={Believe3=0}] unless score @s InSubArea matches 1..5 run scoreboard players reset @s Believe3
# ループ
    execute if entity @a[scores={Believe3=0},limit=1] run schedule function player_manager:god/mercy/listener 1t
