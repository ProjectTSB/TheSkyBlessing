scoreboard players add @s aj.haruclaire.animation.17_02_sword_rain_shot_0.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.17_02_sword_rain_shot_0.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/17_02_sword_rain_shot_0/apply_frame_as_root
execute if score @s aj.haruclaire.animation.17_02_sword_rain_shot_0.local_anim_time matches 25.. run function animated_java:haruclaire/zzzzzzzz/animations/17_02_sword_rain_shot_0/end