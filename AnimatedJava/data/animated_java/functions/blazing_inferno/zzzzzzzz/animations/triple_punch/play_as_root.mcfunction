scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.triple_punch.local_anim_time 0
scoreboard players set @s aj.blazing_inferno.animation.triple_punch.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:blazing_inferno/zzzzzzzz/animations/triple_punch/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.blazing_inferno.animation.triple_punch