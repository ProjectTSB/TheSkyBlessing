scoreboard players add @s aj.tultaria.animation.neutral.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.neutral.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/neutral/apply_frame_as_root
execute if score @s aj.tultaria.animation.neutral.local_anim_time matches 60.. run function animated_java:tultaria/zzzzzzzz/animations/neutral/end