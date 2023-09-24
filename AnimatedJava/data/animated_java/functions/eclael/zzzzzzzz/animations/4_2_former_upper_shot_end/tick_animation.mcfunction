scoreboard players add @s aj.eclael.animation.4_2_former_upper_shot_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.4_2_former_upper_shot_end.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/4_2_former_upper_shot_end/apply_frame_as_root
execute if score @s aj.eclael.animation.4_2_former_upper_shot_end.local_anim_time matches 21.. run function animated_java:eclael/zzzzzzzz/animations/4_2_former_upper_shot_end/end