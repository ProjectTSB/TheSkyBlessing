function animated_java:haruclaire_illusion/zzzzzzzz/animations/8_charge_slash_0/play_as_root
function animated_java:haruclaire_illusion/zzzzzzzz/animations/8_charge_slash_0/tween_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i