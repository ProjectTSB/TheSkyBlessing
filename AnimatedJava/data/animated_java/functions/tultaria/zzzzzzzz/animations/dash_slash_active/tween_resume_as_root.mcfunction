function animated_java:tultaria/zzzzzzzz/animations/dash_slash_active/resume_as_root
function animated_java:tultaria/zzzzzzzz/animations/dash_slash_active/tween_as_root
function animated_java:tultaria/zzzzzzzz/animations/dash_slash_active/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i