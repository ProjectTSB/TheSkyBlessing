scoreboard players add @s aj.eclael.animation.29_0_phase_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.29_0_phase_start.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/29_0_phase_start/apply_frame_as_root
execute if score @s aj.eclael.animation.29_0_phase_start.local_anim_time matches 100.. run function animated_java:eclael/zzzzzzzz/animations/29_0_phase_start/end