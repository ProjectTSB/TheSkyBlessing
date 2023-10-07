scoreboard players add @s aj.eclael.animation.99_invisible.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.99_invisible.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/99_invisible/apply_frame_as_root
execute if score @s aj.eclael.animation.99_invisible.local_anim_time matches 1.. run function animated_java:eclael/zzzzzzzz/animations/99_invisible/end