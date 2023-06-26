scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.dash_charge.local_anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.dash_charge.loop_mode 0
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blazing_inferno/zzzzzzzz/animations/dash_charge/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blazing_inferno.animation.dash_charge