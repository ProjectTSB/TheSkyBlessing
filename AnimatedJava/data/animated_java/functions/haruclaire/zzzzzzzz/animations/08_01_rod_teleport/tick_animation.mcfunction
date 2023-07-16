scoreboard players add @s aj.haruclaire.animation.08_01_rod_teleport.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.08_01_rod_teleport.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/apply_frame_as_root
execute if score @s aj.haruclaire.animation.08_01_rod_teleport.local_anim_time matches 51.. run function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/end