#> asset_manager:artifact/triggers/event/damage/add_tag_attacker
#
#
#
# @within function asset_manager:artifact/triggers/damage*/foreach

#> Private
# @private
    #declare score_holder $AttackedFrom

execute if data storage asset:context Damage.From store result score $AttackedFrom Temporary run data get storage asset:context Damage.From
execute if data storage asset:context Damage.From as @e[type=#lib:living,type=!player,distance=..150] if score @s MobUUID = $AttackedFrom Temporary run tag @s add Attacker
scoreboard players reset $AttackedFrom Temporary
