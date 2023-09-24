scoreboard players add @s aj.eclael.animation.4_1_former_upper_shot.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.4_1_former_upper_shot.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/4_1_former_upper_shot/apply_frame_as_root
execute if score @s aj.eclael.animation.4_1_former_upper_shot.local_anim_time matches 55.. run function animated_java:eclael/zzzzzzzz/animations/4_1_former_upper_shot/end