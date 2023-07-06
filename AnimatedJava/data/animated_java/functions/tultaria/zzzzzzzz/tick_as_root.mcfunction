execute unless score @s aj.tultaria.rig_loaded = @s aj.tultaria.rig_loaded run function animated_java:tultaria/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:tultaria/zzzzzzzz/animations/tick
function #animated_java:tultaria/on_tick/as_root