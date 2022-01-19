#> asset_manager:sacred_treasure/triggers/sneak/set_context
#
# asset:contextにスニークした時間のデータを設定します
#
# @within function asset_manager:sacred_treasure/triggers/sneak/

execute store result storage asset:context SneakTime.mainhand int 1 run scoreboard players get @s Sneak.Mainhand
execute store result storage asset:context SneakTime.offhand int 1 run scoreboard players get @s Sneak.Offhand
execute store result storage asset:context SneakTime.head int 1 run scoreboard players get @s Sneak.Head
execute store result storage asset:context SneakTime.chest int 1 run scoreboard players get @s Sneak.Chest
execute store result storage asset:context SneakTime.legs int 1 run scoreboard players get @s Sneak.Legs
execute store result storage asset:context SneakTime.feet int 1 run scoreboard players get @s Sneak.Feet