scoreboard players add @s aj.eclael.animation.3_0_former_shot_move.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.3_0_former_shot_move.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/3_0_former_shot_move/apply_frame_as_root
execute if score @s aj.eclael.animation.3_0_former_shot_move.local_anim_time matches 65.. run function animated_java:eclael/zzzzzzzz/animations/3_0_former_shot_move/end