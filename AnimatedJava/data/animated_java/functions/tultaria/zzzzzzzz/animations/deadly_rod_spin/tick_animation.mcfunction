scoreboard players add @s aj.tultaria.animation.deadly_rod_spin.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.deadly_rod_spin.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/deadly_rod_spin/apply_frame_as_root
execute if score @s aj.tultaria.animation.deadly_rod_spin.local_anim_time matches 10.. run function animated_java:tultaria/zzzzzzzz/animations/deadly_rod_spin/end