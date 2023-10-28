scoreboard players set @s aj.eclael.animation.30_0_phase_death.local_anim_time 0
tag @s remove aj.eclael.animation.30_0_phase_death
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/30_0_phase_death/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes