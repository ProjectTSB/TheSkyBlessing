scoreboard players add @s aj.haruclaire.animation.17_05_sword_rain_laser_end.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.17_05_sword_rain_laser_end.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/17_05_sword_rain_laser_end/apply_frame_as_root
execute if score @s aj.haruclaire.animation.17_05_sword_rain_laser_end.local_anim_time matches 20.. run function animated_java:haruclaire/zzzzzzzz/animations/17_05_sword_rain_laser_end/end