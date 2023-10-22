scoreboard players set @s aj.eclael.animation.19_3_latter_attack_iai_hard.local_anim_time 0
tag @s remove aj.eclael.animation.19_3_latter_attack_iai_hard
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/19_3_latter_attack_iai_hard/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes