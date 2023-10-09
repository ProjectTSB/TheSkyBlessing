scoreboard players add @s aj.haruclaire.animation.03_02_rod_turara_attack.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.03_02_rod_turara_attack.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/03_02_rod_turara_attack/apply_frame_as_root
execute if score @s aj.haruclaire.animation.03_02_rod_turara_attack.local_anim_time matches 41.. run function animated_java:haruclaire/zzzzzzzz/animations/03_02_rod_turara_attack/end