scoreboard players add @s aj.eclael.animation.0_3_former_idle_bikkuri.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.0_3_former_idle_bikkuri.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/0_3_former_idle_bikkuri/apply_frame_as_root
execute if score @s aj.eclael.animation.0_3_former_idle_bikkuri.local_anim_time matches 70.. run function animated_java:eclael/zzzzzzzz/animations/0_3_former_idle_bikkuri/end