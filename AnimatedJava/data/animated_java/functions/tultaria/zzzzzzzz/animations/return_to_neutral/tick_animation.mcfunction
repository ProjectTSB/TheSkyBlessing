scoreboard players add @s aj.tultaria.animation.return_to_neutral.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.return_to_neutral.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/return_to_neutral/apply_frame_as_root
execute if score @s aj.tultaria.animation.return_to_neutral.local_anim_time matches 25.. run function animated_java:tultaria/zzzzzzzz/animations/return_to_neutral/end