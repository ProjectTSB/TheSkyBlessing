scoreboard players add @s aj.eclael.animation.26_0_phase_change.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.26_0_phase_change.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/26_0_phase_change/apply_frame_as_root
execute if score @s aj.eclael.animation.26_0_phase_change.local_anim_time matches 75.. run function animated_java:eclael/zzzzzzzz/animations/26_0_phase_change/end