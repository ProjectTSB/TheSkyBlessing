scoreboard players add @s aj.eclael.animation.30_0_phase_death.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.30_0_phase_death.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/30_0_phase_death/apply_frame_as_root
execute if score @s aj.eclael.animation.30_0_phase_death.local_anim_time matches 100.. run function animated_java:eclael/zzzzzzzz/animations/30_0_phase_death/end