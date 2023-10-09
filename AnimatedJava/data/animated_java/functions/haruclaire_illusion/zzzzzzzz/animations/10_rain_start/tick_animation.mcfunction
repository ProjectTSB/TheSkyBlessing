scoreboard players add @s aj.haruclaire_illusion.animation.10_rain_start.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire_illusion.animation.10_rain_start.local_anim_time
function animated_java:haruclaire_illusion/zzzzzzzz/animations/10_rain_start/apply_frame_as_root
execute if score @s aj.haruclaire_illusion.animation.10_rain_start.local_anim_time matches 6.. run function animated_java:haruclaire_illusion/zzzzzzzz/animations/10_rain_start/end