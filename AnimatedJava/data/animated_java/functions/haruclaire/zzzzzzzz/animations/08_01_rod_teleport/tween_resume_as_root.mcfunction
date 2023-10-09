function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/08_01_rod_teleport/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i