scoreboard players add @s aj.eclael.animation.10_1_latter_idle_rare.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.10_1_latter_idle_rare.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/10_1_latter_idle_rare/apply_frame_as_root
execute if score @s aj.eclael.animation.10_1_latter_idle_rare.local_anim_time matches 60.. run function animated_java:eclael/zzzzzzzz/animations/10_1_latter_idle_rare/end