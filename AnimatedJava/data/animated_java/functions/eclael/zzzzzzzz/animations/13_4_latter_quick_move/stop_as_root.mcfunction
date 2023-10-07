scoreboard players set @s aj.eclael.animation.13_4_latter_quick_move.local_anim_time 0
tag @s remove aj.eclael.animation.13_4_latter_quick_move
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/13_4_latter_quick_move/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes