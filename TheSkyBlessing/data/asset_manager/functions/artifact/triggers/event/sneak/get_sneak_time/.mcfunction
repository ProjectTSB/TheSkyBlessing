#> asset_manager:artifact/triggers/event/sneak/get_sneak_time/
#
#
#
# @within function asset_manager:artifact/triggers/*sneak*/

execute if data storage asset:artifact TargetItem{TargetSlot:"mainhand"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Mainhand
execute if data storage asset:artifact TargetItem{TargetSlot:"offhand"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Offhand
execute if data storage asset:artifact TargetItem{TargetSlot:"feet"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Feet
execute if data storage asset:artifact TargetItem{TargetSlot:"legs"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Legs
execute if data storage asset:artifact TargetItem{TargetSlot:"chest"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Chest
execute if data storage asset:artifact TargetItem{TargetSlot:"head"} store result storage asset:context SneakTime int 1 run scoreboard players get @s Sneak.Head
execute if data storage asset:artifact TargetItem{TargetSlot:"hotbar"} store result storage asset:context SneakTime int 1 run function asset_manager:artifact/triggers/event/sneak/get_sneak_time/hotbar.m with storage asset:artifact TargetItem
