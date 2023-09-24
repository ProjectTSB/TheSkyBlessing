scoreboard players add @s aj.eclael.animation.12_0_latter_warp_start2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.12_0_latter_warp_start2.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/12_0_latter_warp_start2/apply_frame_as_root
execute if score @s aj.eclael.animation.12_0_latter_warp_start2.local_anim_time matches 30.. run function animated_java:eclael/zzzzzzzz/animations/12_0_latter_warp_start2/end