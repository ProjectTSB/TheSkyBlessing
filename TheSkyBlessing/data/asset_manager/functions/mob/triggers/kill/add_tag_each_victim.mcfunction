#> asset_manager:mob/triggers/kill/add_tag_each_victim
#
#
#
# @within function
#   asset_manager:mob/triggers/kill/foreach
#   asset_manager:mob/triggers/kill/add_tag_each_victim

#> Private
# @private
#declare score_holder $VictimID

execute store result score $VictimID Temporary run data get storage asset:mob KillTargets[-1]
data remove storage asset:mob KillTargets[-1]

execute as @a[distance=..150] if score @s UserID = $VictimID Temporary run tag @s add Victim
scoreboard players reset $VictimID Temporary

execute if data storage asset:mob AttackTargets[0] run function asset_manager:mob/triggers/kill/add_tag_each_victim
