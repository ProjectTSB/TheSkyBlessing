function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/resume_as_root
function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/tween_as_root
function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i