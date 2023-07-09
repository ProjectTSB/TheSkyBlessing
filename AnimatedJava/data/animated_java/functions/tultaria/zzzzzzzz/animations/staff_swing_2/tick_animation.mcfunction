scoreboard players add @s aj.tultaria.animation.staff_swing_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.staff_swing_2.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/staff_swing_2/apply_frame_as_root
execute if score @s aj.tultaria.animation.staff_swing_2.local_anim_time matches 60.. run function animated_java:tultaria/zzzzzzzz/animations/staff_swing_2/end