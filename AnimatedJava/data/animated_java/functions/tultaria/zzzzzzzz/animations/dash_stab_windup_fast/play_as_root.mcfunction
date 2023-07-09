scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.animation.dash_stab_windup_fast.local_anim_time 0
scoreboard players set @s aj.tultaria.animation.dash_stab_windup_fast.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tultaria/zzzzzzzz/animations/dash_stab_windup_fast/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tultaria.animation.dash_stab_windup_fast