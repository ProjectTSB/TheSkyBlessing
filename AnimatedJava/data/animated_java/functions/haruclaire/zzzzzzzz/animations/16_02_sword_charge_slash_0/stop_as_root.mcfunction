scoreboard players set @s aj.haruclaire.animation.16_02_sword_charge_slash_0.local_anim_time 0
tag @s remove aj.haruclaire.animation.16_02_sword_charge_slash_0
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.haruclaire.disable_command_keyframes
function animated_java:haruclaire/zzzzzzzz/animations/16_02_sword_charge_slash_0/tree/leaf_0
tag @s remove aj.haruclaire.disable_command_keyframes