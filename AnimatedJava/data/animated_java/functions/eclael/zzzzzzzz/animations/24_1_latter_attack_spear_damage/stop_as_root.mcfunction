scoreboard players set @s aj.eclael.animation.24_1_latter_attack_spear_damage.local_anim_time 0
tag @s remove aj.eclael.animation.24_1_latter_attack_spear_damage
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/24_1_latter_attack_spear_damage/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes