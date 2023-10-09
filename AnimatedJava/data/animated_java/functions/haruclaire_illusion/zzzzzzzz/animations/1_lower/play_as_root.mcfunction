scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire_illusion.animation.1_lower.local_anim_time 0
scoreboard players set @s aj.haruclaire_illusion.animation.1_lower.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:haruclaire_illusion/zzzzzzzz/animations/1_lower/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.haruclaire_illusion.animation.1_lower