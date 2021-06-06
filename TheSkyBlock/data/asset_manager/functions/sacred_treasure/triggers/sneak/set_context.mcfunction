#> asset_manager:sacred_treasure/triggers/sneak/set_context
#
# asset:contextにスニークした時間のデータを設定します
#
# @within function asset_manager:sacred_treasure/triggers/sneak/

execute store result storage asset:context SneakTime.Mainhand int 1 run scoreboard players get @s Sneak.Mainhand
execute store result storage asset:context SneakTime.Offhand int 1 run scoreboard players get @s Sneak.Offhand
execute store result storage asset:context SneakTime.Head int 1 run scoreboard players get @s Sneak.Head
execute store result storage asset:context SneakTime.Chest int 1 run scoreboard players get @s Sneak.Chest
execute store result storage asset:context SneakTime.Legs int 1 run scoreboard players get @s Sneak.Legs
execute store result storage asset:context SneakTime.Feet int 1 run scoreboard players get @s Sneak.Feet