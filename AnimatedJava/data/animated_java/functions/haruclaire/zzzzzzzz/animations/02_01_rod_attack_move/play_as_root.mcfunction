scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.haruclaire.animation.02_01_rod_attack_move.local_anim_time 0
scoreboard players set @s aj.haruclaire.animation.02_01_rod_attack_move.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:haruclaire/zzzzzzzz/animations/02_01_rod_attack_move/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.haruclaire.animation.02_01_rod_attack_move