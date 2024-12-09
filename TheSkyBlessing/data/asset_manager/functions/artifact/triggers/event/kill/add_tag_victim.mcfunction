#> asset_manager:artifact/triggers/event/kill/add_tag_victim
#
#
#
# @within function asset_manager:artifact/triggers/kill*/foreach

#> Private
# @private
    #declare score_holder $KillTarget

execute if data storage asset:context Kill.To store result score $KillTarget Temporary run data get storage asset:context Kill.To
execute if data storage asset:context Kill.To as @e[type=#lib:living,type=!player,distance=..150] if score @s MobUUID = $KillTarget Temporary run tag @s add Victim
scoreboard players reset $KillTarget Temporary
