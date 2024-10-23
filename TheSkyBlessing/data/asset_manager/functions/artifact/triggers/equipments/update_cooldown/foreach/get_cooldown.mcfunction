#> asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown
# @within function
#   asset_manager:artifact/triggers/equipments/update_cooldown/foreach/
#   asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown

#> private
# @private
    #declare score_holder $LCD

# maximize
    execute store result score $LCD Temporary run data get storage asset:artifact CopiedTriggers[-1].LocalCooldown 1
    scoreboard players operation $Max Temporary > $LCD Temporary

# loop
    scoreboard players reset $LCD Temporary
    data remove storage asset:artifact CopiedTriggers[-1]
    execute unless data storage asset:artifact CopiedTriggers[0] run data remove storage asset:artifact CopiedTriggers
    execute if data storage asset:artifact CopiedTriggers[0] run function asset_manager:artifact/triggers/equipments/update_cooldown/foreach/get_cooldown
