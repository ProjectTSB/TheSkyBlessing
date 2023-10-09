scoreboard players set @s aj.haruclaire_illusion.animation.10_rain_start.local_anim_time 0
tag @s remove aj.haruclaire_illusion.animation.10_rain_start
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire_illusion.disable_command_keyframes
function animated_java:haruclaire_illusion/zzzzzzzz/animations/10_rain_start/tree/leaf_0
tag @s remove aj.haruclaire_illusion.disable_command_keyframes