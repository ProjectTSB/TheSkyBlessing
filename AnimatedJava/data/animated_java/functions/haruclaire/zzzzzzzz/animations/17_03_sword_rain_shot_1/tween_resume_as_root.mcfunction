function animated_java:haruclaire/zzzzzzzz/animations/17_03_sword_rain_shot_1/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/17_03_sword_rain_shot_1/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/17_03_sword_rain_shot_1/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i