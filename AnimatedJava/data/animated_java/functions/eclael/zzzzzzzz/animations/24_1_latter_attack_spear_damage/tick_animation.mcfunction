scoreboard players add @s aj.eclael.animation.24_1_latter_attack_spear_damage.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.24_1_latter_attack_spear_damage.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/24_1_latter_attack_spear_damage/apply_frame_as_root
execute if score @s aj.eclael.animation.24_1_latter_attack_spear_damage.local_anim_time matches 40.. run function animated_java:eclael/zzzzzzzz/animations/24_1_latter_attack_spear_damage/end