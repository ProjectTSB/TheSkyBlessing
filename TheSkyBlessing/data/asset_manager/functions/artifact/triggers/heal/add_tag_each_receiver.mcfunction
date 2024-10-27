#> asset_manager:artifact/triggers/heal/add_tag_each_receiver
#
#
#
# @within function
#   asset_manager:artifact/triggers/heal/foreach
#   asset_manager:artifact/triggers/heal/add_tag_each_receiver

#> Private
# @private
#declare score_holder $HealTarget

execute store result score $HealTarget Temporary run data get storage asset:context Heal.To[-1]
data remove storage asset:context Heal.To[-1]

execute as @a if score @s UserID = $HealTarget Temporary run tag @s add Receiver

scoreboard players reset $HealTarget Temporary
execute if data storage asset:context Heal.To[0] run function asset_manager:artifact/triggers/heal/add_tag_each_receiver
