scoreboard players set @s aj.haruclaire.animation.07_02_rod_shot_move_left.local_anim_time 0
tag @s remove aj.haruclaire.animation.07_02_rod_shot_move_left
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire.disable_command_keyframes
function animated_java:haruclaire/zzzzzzzz/animations/07_02_rod_shot_move_left/tree/leaf_0
tag @s remove aj.haruclaire.disable_command_keyframes