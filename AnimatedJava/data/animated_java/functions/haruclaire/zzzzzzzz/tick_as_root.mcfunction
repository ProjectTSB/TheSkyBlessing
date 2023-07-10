execute unless score @s aj.haruclaire.rig_loaded = @s aj.haruclaire.rig_loaded run function animated_java:haruclaire/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:haruclaire/zzzzzzzz/animations/tick
function #animated_java:haruclaire/on_tick/as_root