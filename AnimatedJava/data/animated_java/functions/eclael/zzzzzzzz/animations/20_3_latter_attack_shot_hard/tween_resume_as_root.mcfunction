function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/resume_as_root
function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/tween_as_root
function animated_java:eclael/zzzzzzzz/animations/20_3_latter_attack_shot_hard/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i