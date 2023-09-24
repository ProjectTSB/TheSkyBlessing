scoreboard players add @s aj.eclael.animation.4_0_former_upper_shot_pose.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.4_0_former_upper_shot_pose.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/4_0_former_upper_shot_pose/apply_frame_as_root
execute if score @s aj.eclael.animation.4_0_former_upper_shot_pose.local_anim_time matches 85.. run function animated_java:eclael/zzzzzzzz/animations/4_0_former_upper_shot_pose/end