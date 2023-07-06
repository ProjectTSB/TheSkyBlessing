scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.tultaria.animation.new.local_anim_time 0
scoreboard players set @s aj.tultaria.animation.new.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:tultaria/zzzzzzzz/animations/new/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.tultaria.animation.new