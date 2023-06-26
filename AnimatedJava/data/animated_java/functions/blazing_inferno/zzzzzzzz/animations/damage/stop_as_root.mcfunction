scoreboard players set @s aj.blazing_inferno.animation.damage.local_anim_time 0
tag @s remove aj.blazing_inferno.animation.damage
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.blazing_inferno.disable_command_keyframes
function animated_java:blazing_inferno/zzzzzzzz/animations/damage/tree/leaf_0
tag @s remove aj.blazing_inferno.disable_command_keyframes