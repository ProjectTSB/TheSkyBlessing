scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.animation.wing_off.local_anim_time 0
scoreboard players set @s aj.tultaria.animation.wing_off.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tultaria/zzzzzzzz/animations/wing_off/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tultaria.animation.wing_off