scoreboard players set @s aj.eclael.animation.26_0_phase_change.local_anim_time 0
tag @s remove aj.eclael.animation.26_0_phase_change
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/26_0_phase_change/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes