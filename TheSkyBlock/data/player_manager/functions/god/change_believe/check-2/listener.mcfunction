#> player_manager:god/change_believe/check-2/listener
#
#
#
# @within function
#   player_manager:god/change_believe/check-2/
#   player_manager:god/change_believe/check-2/listener

# チェック
    execute as @a[scores={Believe=1..}] run function player_manager:god/change_believe/check-2/on_click
# ループ
    execute if entity @a[scores={Believe=0},limit=1] run schedule function player_manager:god/change_believe/check-2/listener 1t