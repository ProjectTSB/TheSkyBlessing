scoreboard players add @s aj.eclael.animation.2_3_former_slash_2_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.2_3_former_slash_2_start.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/2_3_former_slash_2_start/apply_frame_as_root
execute if score @s aj.eclael.animation.2_3_former_slash_2_start.local_anim_time matches 26.. run function animated_java:eclael/zzzzzzzz/animations/2_3_former_slash_2_start/end