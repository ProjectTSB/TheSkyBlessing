scoreboard players add @s aj.eclael.animation.10_0_latter_idle_normal.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.10_0_latter_idle_normal.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/10_0_latter_idle_normal/apply_frame_as_root
execute if score @s aj.eclael.animation.10_0_latter_idle_normal.local_anim_time matches 60.. run function animated_java:eclael/zzzzzzzz/animations/10_0_latter_idle_normal/end