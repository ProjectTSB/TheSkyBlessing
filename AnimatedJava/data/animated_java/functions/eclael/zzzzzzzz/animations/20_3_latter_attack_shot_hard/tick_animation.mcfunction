scoreboard players add @s aj.eclael.animation.20_3_latter_attack_shot_hard.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.20_3_latter_attack_shot_hard.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/apply_frame_as_root
execute if score @s aj.eclael.animation.20_3_latter_attack_shot_hard.local_anim_time matches 110.. run function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/end