scoreboard players set @s aj.eclael.animation.4_4_former_upper_damage_end.local_anim_time 0
tag @s remove aj.eclael.animation.4_4_former_upper_damage_end
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/4_4_former_upper_damage_end/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes