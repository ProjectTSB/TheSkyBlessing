scoreboard players add @s aj.eclael.animation.12_1_latter_warp_move_left.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.12_1_latter_warp_move_left.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/12_1_latter_warp_move_left/apply_frame_as_root
execute if score @s aj.eclael.animation.12_1_latter_warp_move_left.local_anim_time matches 20.. run function animated_java:eclael/zzzzzzzz/animations/12_1_latter_warp_move_left/end