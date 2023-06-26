scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.intro.local_anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.intro.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blazing_inferno/zzzzzzzz/animations/intro/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blazing_inferno.animation.intro