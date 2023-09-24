scoreboard players add @s aj.eclael.animation.2_2_former_slash_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.2_2_former_slash_1.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/2_2_former_slash_1/apply_frame_as_root
execute if score @s aj.eclael.animation.2_2_former_slash_1.local_anim_time matches 20.. run function animated_java:eclael/zzzzzzzz/animations/2_2_former_slash_1/end