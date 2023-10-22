scoreboard players set @s aj.eclael.animation.20_3_latter_attack_shot_hard.local_anim_time 0
tag @s remove aj.eclael.animation.20_3_latter_attack_shot_hard
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes