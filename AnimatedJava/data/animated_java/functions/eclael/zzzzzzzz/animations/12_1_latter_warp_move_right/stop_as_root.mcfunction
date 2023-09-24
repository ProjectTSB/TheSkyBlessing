scoreboard players set @s aj.eclael.animation.12_1_latter_warp_move_right.local_anim_time 0
tag @s remove aj.eclael.animation.12_1_latter_warp_move_right
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/12_1_latter_warp_move_right/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes