scoreboard players add @s aj.eclael.animation.99_1_idle_relax_bak.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.99_1_idle_relax_bak.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/apply_frame_as_root
execute if score @s aj.eclael.animation.99_1_idle_relax_bak.local_anim_time matches 61.. run function animated_java:eclael/zzzzzzzz/animations/99_1_idle_relax_bak/end