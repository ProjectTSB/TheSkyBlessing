scoreboard players add @s aj.eclael.animation.20_1_latter_attack_shot_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.20_1_latter_attack_shot_1.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/20_1_latter_attack_shot_1/apply_frame_as_root
execute if score @s aj.eclael.animation.20_1_latter_attack_shot_1.local_anim_time matches 40.. run function animated_java:eclael/zzzzzzzz/animations/20_1_latter_attack_shot_1/end