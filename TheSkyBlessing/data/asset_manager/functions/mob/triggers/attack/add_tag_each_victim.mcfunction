#> asset_manager:mob/triggers/attack/add_tag_each_victim
#
#
#
# @within function
#   asset_manager:mob/triggers/attack/foreach
#   asset_manager:mob/triggers/attack/add_tag_each_victim

#> Private
# @private
#declare score_holder $AttackedFrom

execute store result score $AttackedFrom Temporary run data get storage asset:context Attack.To[-1]
data remove storage asset:context Attack.To[-1]

execute as @a[distance=..150] if score @s UserID = $AttackedFrom Temporary run tag @s add Victim
scoreboard players reset $AttackedFrom Temporary

execute if data storage asset:context Attack.To[0] run function asset_manager:mob/triggers/attack/add_tag_each_victim
