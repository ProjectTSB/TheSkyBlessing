scoreboard players add @s aj.eclael.animation.24_2_latter_attack_spear_hard.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.24_2_latter_attack_spear_hard.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/24_2_latter_attack_spear_hard/apply_frame_as_root
execute if score @s aj.eclael.animation.24_2_latter_attack_spear_hard.local_anim_time matches 70.. run function animated_java:eclael/zzzzzzzz/animations/24_2_latter_attack_spear_hard/end