function animated_java:haruclaire/zzzzzzzz/animations/02_01_rod_attack_move/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/02_01_rod_attack_move/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/02_01_rod_attack_move/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i