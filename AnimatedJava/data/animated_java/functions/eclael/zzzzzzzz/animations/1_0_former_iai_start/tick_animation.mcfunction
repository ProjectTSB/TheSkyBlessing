scoreboard players add @s aj.eclael.animation.1_0_former_iai_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.1_0_former_iai_start.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/1_0_former_iai_start/apply_frame_as_root
execute if score @s aj.eclael.animation.1_0_former_iai_start.local_anim_time matches 35.. run function animated_java:eclael/zzzzzzzz/animations/1_0_former_iai_start/end