function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/resume_as_root
function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/tween_as_root
function animated_java:haruclaire/zzzzzzzz/animations/16_05_sword_charge_counter/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i