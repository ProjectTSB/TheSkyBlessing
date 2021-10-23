#> player_manager:god/change_believe/listener
#
#
#
# @within function
#   player_manager:god/change_believe/check
#   player_manager:god/change_believe/listener

# チェック
    execute as @a[scores={Believe=1..}] run function player_manager:god/change_believe/on_click_chat
# ループ
    execute if entity @a[scores={Believe=0},limit=1] run schedule function player_manager:god/change_believe/listener 1t