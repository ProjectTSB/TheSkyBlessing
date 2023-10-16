scoreboard players add @s aj.eclael.animation.16_0_momiji.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.16_0_momiji.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/16_0_momiji/apply_frame_as_root
execute if score @s aj.eclael.animation.16_0_momiji.local_anim_time matches 90.. run function animated_java:eclael/zzzzzzzz/animations/16_0_momiji/end