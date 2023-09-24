scoreboard players add @s aj.eclael.animation.4_3_former_upper_damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.4_3_former_upper_damage.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/4_3_former_upper_damage/apply_frame_as_root
execute if score @s aj.eclael.animation.4_3_former_upper_damage.local_anim_time matches 80.. run function animated_java:eclael/zzzzzzzz/animations/4_3_former_upper_damage/end