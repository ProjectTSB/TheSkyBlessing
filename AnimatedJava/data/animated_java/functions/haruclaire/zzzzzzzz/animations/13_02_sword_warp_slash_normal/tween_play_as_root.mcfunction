function animated_java:haruclaire/zzzzzzzz/animations/13_02_sword_warp_slash_normal/play_as_root
function animated_java:haruclaire/zzzzzzzz/animations/13_02_sword_warp_slash_normal/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i