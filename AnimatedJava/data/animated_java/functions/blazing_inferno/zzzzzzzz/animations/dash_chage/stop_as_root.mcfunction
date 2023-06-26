scoreboard players set @s aj.blazing_inferno.animation.dash_chage.local_anim_time 0
tag @s remove aj.blazing_inferno.animation.dash_chage
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.blazing_inferno.disable_command_keyframes
function animated_java:blazing_inferno/zzzzzzzz/animations/dash_chage/tree/leaf_0
tag @s remove aj.blazing_inferno.disable_command_keyframes