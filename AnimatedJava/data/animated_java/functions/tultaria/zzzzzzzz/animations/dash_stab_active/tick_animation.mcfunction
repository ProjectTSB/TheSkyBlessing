scoreboard players add @s aj.tultaria.animation.dash_stab_active.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.tultaria.animation.dash_stab_active.local_anim_time
function animated_java:tultaria/zzzzzzzz/animations/dash_stab_active/apply_frame_as_root
execute if score @s aj.tultaria.animation.dash_stab_active.local_anim_time matches 5.. run function animated_java:tultaria/zzzzzzzz/animations/dash_stab_active/end