scoreboard players set @s aj.eclael.animation.18_1_latter_attack_moveslash_near2.local_anim_time 0
tag @s remove aj.eclael.animation.18_1_latter_attack_moveslash_near2
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/18_1_latter_attack_moveslash_near2/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes