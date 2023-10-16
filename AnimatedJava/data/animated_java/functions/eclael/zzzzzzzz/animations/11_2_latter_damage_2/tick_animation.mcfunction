scoreboard players add @s aj.eclael.animation.11_2_latter_damage_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.11_2_latter_damage_2.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/11_2_latter_damage_2/apply_frame_as_root
execute if score @s aj.eclael.animation.11_2_latter_damage_2.local_anim_time matches 45.. run function animated_java:eclael/zzzzzzzz/animations/11_2_latter_damage_2/end