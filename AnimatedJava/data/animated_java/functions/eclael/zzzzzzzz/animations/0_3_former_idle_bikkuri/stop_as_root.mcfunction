scoreboard players set @s aj.eclael.animation.0_3_former_idle_bikkuri.local_anim_time 0
tag @s remove aj.eclael.animation.0_3_former_idle_bikkuri
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.eclael.disable_command_keyframes
function animated_java:eclael/zzzzzzzz/animations/0_3_former_idle_bikkuri/tree/leaf_0
tag @s remove aj.eclael.disable_command_keyframes