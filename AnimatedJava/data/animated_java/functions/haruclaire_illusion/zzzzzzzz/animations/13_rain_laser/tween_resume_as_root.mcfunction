function animated_java:haruclaire_illusion/zzzzzzzz/animations/13_rain_laser/resume_as_root
function animated_java:haruclaire_illusion/zzzzzzzz/animations/13_rain_laser/tween_as_root
function animated_java:haruclaire_illusion/zzzzzzzz/animations/13_rain_laser/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i