scoreboard players add @s aj.eclael.animation.15_0_sorafune.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.15_0_sorafune.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune/apply_frame_as_root
execute if score @s aj.eclael.animation.15_0_sorafune.local_anim_time matches 155.. run function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune/end