scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.heavy_windup.local_anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.heavy_windup.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blazing_inferno/zzzzzzzz/animations/heavy_windup/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blazing_inferno.animation.heavy_windup