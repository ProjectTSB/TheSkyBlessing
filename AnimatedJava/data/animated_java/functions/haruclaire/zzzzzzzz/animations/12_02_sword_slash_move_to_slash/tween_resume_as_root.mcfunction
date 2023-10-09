function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i