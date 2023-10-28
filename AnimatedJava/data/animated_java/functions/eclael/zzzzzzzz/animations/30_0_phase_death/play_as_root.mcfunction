scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.eclael.animation.30_0_phase_death.local_anim_time 0
scoreboard players set @s aj.eclael.animation.30_0_phase_death.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:eclael/zzzzzzzz/animations/30_0_phase_death/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.eclael.animation.30_0_phase_death