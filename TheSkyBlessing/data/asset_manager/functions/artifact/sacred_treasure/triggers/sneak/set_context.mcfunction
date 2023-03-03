#> asset_manager:artifact/triggers/sneak/set_context
#
# asset:contextにスニークした時間のデータを設定します
#
# @within function asset_manager:artifact/triggers/sneak/

execute store result storage asset:context SneakTime.mainhand int 1 run scoreboard players get @s Sneak.Mainhand
execute store result storage asset:context SneakTime.offhand int 1 run scoreboard players get @s Sneak.Offhand
execute store result storage asset:context SneakTime.head int 1 run scoreboard players get @s Sneak.Head
execute store result storage asset:context SneakTime.chest int 1 run scoreboard players get @s Sneak.Chest
execute store result storage asset:context SneakTime.legs int 1 run scoreboard players get @s Sneak.Legs
execute store result storage asset:context SneakTime.feet int 1 run scoreboard players get @s Sneak.Feet
execute store result storage asset:context SneakTime.hotbar[0] int 1 run scoreboard players get @s Sneak.Hotbar0
execute store result storage asset:context SneakTime.hotbar[1] int 1 run scoreboard players get @s Sneak.Hotbar1
execute store result storage asset:context SneakTime.hotbar[2] int 1 run scoreboard players get @s Sneak.Hotbar2
execute store result storage asset:context SneakTime.hotbar[3] int 1 run scoreboard players get @s Sneak.Hotbar3
execute store result storage asset:context SneakTime.hotbar[4] int 1 run scoreboard players get @s Sneak.Hotbar4
execute store result storage asset:context SneakTime.hotbar[5] int 1 run scoreboard players get @s Sneak.Hotbar5
execute store result storage asset:context SneakTime.hotbar[6] int 1 run scoreboard players get @s Sneak.Hotbar6
execute store result storage asset:context SneakTime.hotbar[7] int 1 run scoreboard players get @s Sneak.Hotbar7
execute store result storage asset:context SneakTime.hotbar[8] int 1 run scoreboard players get @s Sneak.Hotbar8