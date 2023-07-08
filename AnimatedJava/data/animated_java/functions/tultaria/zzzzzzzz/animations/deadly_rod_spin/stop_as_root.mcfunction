scoreboard players set @s aj.tultaria.animation.deadly_rod_spin.local_anim_time 0
tag @s remove aj.tultaria.animation.deadly_rod_spin
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tultaria.disable_command_keyframes
function animated_java:tultaria/zzzzzzzz/animations/deadly_rod_spin/tree/leaf_0
tag @s remove aj.tultaria.disable_command_keyframes