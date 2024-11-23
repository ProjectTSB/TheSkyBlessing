#> asset_manager:artifact/triggers/event/attack/add_tag_each_victim
#
#
#
# @within function
#   asset_manager:artifact/triggers/vanilla/
#   asset_manager:artifact/triggers/attack*/foreach
#   asset_manager:artifact/triggers/event/attack/add_tag_each_victim

#> Private
# @private
#declare score_holder $AttackTarget

execute store result score $AttackTarget Temporary run data get storage asset:artifact AttackTargets[-1]
data remove storage asset:artifact AttackTargets[-1]

execute as @e[type=#lib:living,type=!player,distance=..150] if score @s MobUUID = $AttackTarget Temporary run tag @s add Victim

scoreboard players reset $AttackTarget Temporary

execute if data storage asset:artifact AttackTargets[0] run function asset_manager:artifact/triggers/event/attack/add_tag_each_victim
