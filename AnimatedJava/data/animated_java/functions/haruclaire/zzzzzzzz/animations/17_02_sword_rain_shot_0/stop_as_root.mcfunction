scoreboard players set @s aj.haruclaire.animation.17_02_sword_rain_shot_0.local_anim_time 0
tag @s remove aj.haruclaire.animation.17_02_sword_rain_shot_0
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire.disable_command_keyframes
function animated_java:haruclaire/zzzzzzzz/animations/17_02_sword_rain_shot_0/tree/leaf_0
tag @s remove aj.haruclaire.disable_command_keyframes