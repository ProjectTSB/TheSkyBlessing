scoreboard players add @s aj.tultaria.animation.staff_swing_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.staff_swing_1.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/staff_swing_1/apply_frame_as_root
execute if score @s aj.tultaria.animation.staff_swing_1.local_anim_time matches 50.. run function animated_java:tultaria/zzzzzzzz/animations/staff_swing_1/end