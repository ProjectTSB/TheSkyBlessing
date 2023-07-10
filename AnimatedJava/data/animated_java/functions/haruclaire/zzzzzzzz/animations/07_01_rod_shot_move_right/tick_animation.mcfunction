scoreboard players add @s aj.haruclaire.animation.07_01_rod_shot_move_right.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.07_01_rod_shot_move_right.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/07_01_rod_shot_move_right/apply_frame_as_root
execute if score @s aj.haruclaire.animation.07_01_rod_shot_move_right.local_anim_time matches 106.. run function animated_java:haruclaire/zzzzzzzz/animations/07_01_rod_shot_move_right/end