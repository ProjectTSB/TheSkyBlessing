scoreboard players add @s aj.eclael.animation.2_4_former_slash_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.2_4_former_slash_2.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/2_4_former_slash_2/apply_frame_as_root
execute if score @s aj.eclael.animation.2_4_former_slash_2.local_anim_time matches 110.. run function animated_java:eclael/zzzzzzzz/animations/2_4_former_slash_2/end