function animated_java:haruclaire/zzzzzzzz/animations/13_01_sword_warp_start/play_as_root
function animated_java:haruclaire/zzzzzzzz/animations/13_01_sword_warp_start/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i