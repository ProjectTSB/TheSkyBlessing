scoreboard players add @s aj.eclael.animation.0_2_former_idle_sleep.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.0_2_former_idle_sleep.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/0_2_former_idle_sleep/apply_frame_as_root
execute if score @s aj.eclael.animation.0_2_former_idle_sleep.local_anim_time matches 60.. run function animated_java:eclael/zzzzzzzz/animations/0_2_former_idle_sleep/end