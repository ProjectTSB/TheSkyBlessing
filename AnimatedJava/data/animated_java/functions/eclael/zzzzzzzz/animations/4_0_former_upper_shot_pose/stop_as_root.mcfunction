scoreboard players set @s aj.eclael.animation.4_0_former_upper_shot_pose.local_anim_time 0
tag @s remove aj.eclael.animation.4_0_former_upper_shot_pose
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/4_0_former_upper_shot_pose/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes