function animated_java:haruclaire/zzzzzzzz/animations/02_02_rod_attack_attack/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/02_02_rod_attack_attack/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/02_02_rod_attack_attack/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i