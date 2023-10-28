scoreboard players operation @s aj.eclael.export_version = aj.eclael.export_version aj.i
data modify entity @s Glowing set value 1
data modify entity @s glow_color_override set value 16711680
execute on passengers run data modify entity @s Glowing set value 1
execute on passengers run data modify entity @s glow_color_override set value 16711680
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},{"text":"An existing rig is out-of-date!"},{"text":" Please re-summon the highlighted rig to update it to the newly exported version.","color":"yellow"}]]