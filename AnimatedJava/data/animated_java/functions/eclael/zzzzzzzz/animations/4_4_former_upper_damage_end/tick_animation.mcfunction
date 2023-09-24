scoreboard players add @s aj.eclael.animation.4_4_former_upper_damage_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.4_4_former_upper_damage_end.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/4_4_former_upper_damage_end/apply_frame_as_root
execute if score @s aj.eclael.animation.4_4_former_upper_damage_end.local_anim_time matches 50.. run function animated_java:eclael/zzzzzzzz/animations/4_4_former_upper_damage_end/end