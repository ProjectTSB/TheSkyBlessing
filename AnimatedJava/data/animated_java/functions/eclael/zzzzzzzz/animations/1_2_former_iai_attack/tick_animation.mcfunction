scoreboard players add @s aj.eclael.animation.1_2_former_iai_attack.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.1_2_former_iai_attack.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/1_2_former_iai_attack/apply_frame_as_root
execute if score @s aj.eclael.animation.1_2_former_iai_attack.local_anim_time matches 76.. run function animated_java:eclael/zzzzzzzz/animations/1_2_former_iai_attack/end