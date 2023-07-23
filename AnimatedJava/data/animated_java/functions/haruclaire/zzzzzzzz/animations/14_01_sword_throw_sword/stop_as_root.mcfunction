scoreboard players set @s aj.haruclaire.animation.14_01_sword_throw_sword.local_anim_time 0
tag @s remove aj.haruclaire.animation.14_01_sword_throw_sword
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire.disable_command_keyframes
function animated_java:haruclaire/zzzzzzzz/animations/14_01_sword_throw_sword/tree/leaf_0
tag @s remove aj.haruclaire.disable_command_keyframes