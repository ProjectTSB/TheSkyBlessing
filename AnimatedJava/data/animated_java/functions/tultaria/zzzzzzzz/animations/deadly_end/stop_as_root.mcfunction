scoreboard players set @s aj.tultaria.animation.deadly_end.local_anim_time 0
tag @s remove aj.tultaria.animation.deadly_end
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.tultaria.disable_command_keyframes
function animated_java:tultaria/zzzzzzzz/animations/deadly_end/tree/leaf_0
tag @s remove aj.tultaria.disable_command_keyframes