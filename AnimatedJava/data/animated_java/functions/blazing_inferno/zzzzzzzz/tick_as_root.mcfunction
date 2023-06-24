execute unless score @s aj.blazing_inferno.rig_loaded = @s aj.blazing_inferno.rig_loaded run function animated_java:blazing_inferno/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:blazing_inferno/zzzzzzzz/animations/tick
function #animated_java:blazing_inferno/on_tick/as_root