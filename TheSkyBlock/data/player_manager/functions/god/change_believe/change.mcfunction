#> player_manager:god/change_believe/change
#
#
#
# @within function
#   player_manager:god/change_believe/check-?/on_click
#   player_manager:god/change_believe/change

# 該当ユーザーのスコア加算
    scoreboard players add @a[scores={GodMessagePhase=0..}] GodMessagePhase 1
# 処理
    execute as @a[scores={GodMessagePhase=40}] run function player_manager:god/change_believe/unbelieve1
    execute as @a[scores={GodMessagePhase=80}] run function player_manager:god/change_believe/unbelieve2
    execute as @a[scores={GodMessagePhase=160}] run function player_manager:god/change_believe/believe1
    execute as @a[scores={GodMessagePhase=200}] run function player_manager:god/change_believe/believe2
    scoreboard players reset @a[scores={GodMessagePhase=200}] GodMessagePhase

# ループ
    execute if entity @a[scores={GodMessagePhase=0..},limit=1] run schedule function player_manager:god/change_believe/change 1t