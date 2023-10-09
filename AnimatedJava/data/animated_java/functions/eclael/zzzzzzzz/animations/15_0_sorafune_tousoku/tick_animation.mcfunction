scoreboard players add @s aj.eclael.animation.15_0_sorafune_tousoku.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.15_0_sorafune_tousoku.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune_tousoku/apply_frame_as_root
execute if score @s aj.eclael.animation.15_0_sorafune_tousoku.local_anim_time matches 114.. run function animated_java:eclael/zzzzzzzz/animations/15_0_sorafune_tousoku/end