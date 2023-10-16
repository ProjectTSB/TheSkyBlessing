scoreboard players add @s aj.eclael.animation.16_1_momiji_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.16_1_momiji_start.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/16_1_momiji_start/apply_frame_as_root
execute if score @s aj.eclael.animation.16_1_momiji_start.local_anim_time matches 20.. run function animated_java:eclael/zzzzzzzz/animations/16_1_momiji_start/end