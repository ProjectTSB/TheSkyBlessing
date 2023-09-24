scoreboard players add @s aj.eclael.animation.12_2_latter_warp_slash_0.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.12_2_latter_warp_slash_0.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/12_2_latter_warp_slash_0/apply_frame_as_root
execute if score @s aj.eclael.animation.12_2_latter_warp_slash_0.local_anim_time matches 25.. run function animated_java:eclael/zzzzzzzz/animations/12_2_latter_warp_slash_0/end