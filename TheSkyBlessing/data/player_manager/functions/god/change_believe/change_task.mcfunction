#> player_manager:god/change_believe/change_task
#
#
#
# @within function
#   player_manager:god/change_believe/on_change
#   player_manager:god/change_believe/change_task


# 該当ユーザーのスコア加算
    scoreboard players add @a[scores={GodMessagePhase=0..}] GodMessagePhase 1
# 処理
    execute as @a[scores={GodMessagePhase=40}] run function player_manager:god/change_believe/unbelieve1
    execute as @a[scores={GodMessagePhase=120}] run function player_manager:god/change_believe/unbelieve2
    execute as @a[scores={GodMessagePhase=280}] run function player_manager:god/change_believe/believe1
    execute as @a[scores={GodMessagePhase=380}] run function player_manager:god/change_believe/believe2
    scoreboard players reset @a[scores={GodMessagePhase=400}] GodMessagePhase
# 途中退出時
    execute as @a[scores={GodMessagePhase=0..}] unless score @s InArea matches 1 run scoreboard players reset @s GodMessagePhase
    execute as @a[scores={GodMessagePhase=0..}] unless score @s InSubArea matches 1..5 run scoreboard players reset @s GodMessagePhase

# ループ
    execute if entity @a[scores={GodMessagePhase=0..},limit=1] run schedule function player_manager:god/change_believe/change_task 1t
