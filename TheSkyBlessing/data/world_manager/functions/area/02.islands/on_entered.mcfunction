#> world_manager:area/02.islands/on_entered
#
#
#
# @within function world_manager:area/02.islands/

# ゲームモードをサバイバルに
    gamemode survival @s[gamemode=!creative]

# TIPS
    execute if data storage global {IsProduction:true} run function player_manager:show_tips
