scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.eclael.animation.new.local_anim_time 0
scoreboard players set @s aj.eclael.animation.new.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:eclael/zzzzzzzz/animations/new/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.eclael.animation.new