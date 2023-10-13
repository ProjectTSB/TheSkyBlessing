scoreboard players add @s aj.eclael.animation.22_0_pursuit.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.22_0_pursuit.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/22_0_pursuit/apply_frame_as_root
execute if score @s aj.eclael.animation.22_0_pursuit.local_anim_time matches 49.. run function animated_java:eclael/zzzzzzzz/animations/22_0_pursuit/end