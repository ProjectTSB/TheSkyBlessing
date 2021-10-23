#> player_manager:god/change_believe/change
#
#
#
# @within function
#   player_manager:god/change_believe/on_click_chat
#   player_manager:god/change_believe/change

# 該当ユーザーのスコア加算
    scoreboard players add @a[scores={GodMessagePhase=0..}] GodMessagePhase 1
# 処理
    execute if entity @a[scores={GodMessagePhase=10}] run function player_manager:god/change_believe/unbelieve
    execute if entity @a[scores={GodMessagePhase=40}] run function player_manager:god/change_believe/believe
    scoreboard players reset @a[scores={GodMessagePhase=40}] GodMessagePhase

# ループ
    execute if entity @a[scores={GodMessagePhase=0..},limit=1] run schedule function player_manager:god/change_believe/change 1t