scoreboard players add @s aj.tultaria.animation.dash_slash_windup.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.dash_slash_windup.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/dash_slash_windup/apply_frame_as_root
execute if score @s aj.tultaria.animation.dash_slash_windup.local_anim_time matches 20.. run function animated_java:tultaria/zzzzzzzz/animations/dash_slash_windup/end