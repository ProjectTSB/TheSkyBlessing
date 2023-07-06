scoreboard players add @s aj.tultaria.animation.wing_off.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.wing_off.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/wing_off/apply_frame_as_root
execute if score @s aj.tultaria.animation.wing_off.local_anim_time matches 1.. run function animated_java:tultaria/zzzzzzzz/animations/wing_off/end