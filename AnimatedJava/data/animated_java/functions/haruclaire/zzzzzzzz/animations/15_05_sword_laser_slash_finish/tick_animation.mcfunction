scoreboard players add @s aj.haruclaire.animation.15_05_sword_laser_slash_finish.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.15_05_sword_laser_slash_finish.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/15_05_sword_laser_slash_finish/apply_frame_as_root
execute if score @s aj.haruclaire.animation.15_05_sword_laser_slash_finish.local_anim_time matches 76.. run function animated_java:haruclaire/zzzzzzzz/animations/15_05_sword_laser_slash_finish/end