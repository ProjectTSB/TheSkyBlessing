execute if entity @s[tag=aj.haruclaire.root] run function animated_java:haruclaire/zzzzzzzz/animations/10_02_sword_idle_rare/play_as_root
execute if entity @s[tag=!aj.haruclaire.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:haruclaire/animations/10_02_sword_idle_rare/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]