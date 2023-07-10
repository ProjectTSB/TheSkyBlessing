function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle_bak/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle_bak/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/10_01_sword_idle_bak/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i