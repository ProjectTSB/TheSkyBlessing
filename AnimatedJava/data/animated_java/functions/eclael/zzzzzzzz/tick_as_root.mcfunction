execute unless score @s aj.eclael.rig_loaded = @s aj.eclael.rig_loaded run function animated_java:eclael/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:eclael/zzzzzzzz/animations/tick
function #animated_java:eclael/on_tick/as_root