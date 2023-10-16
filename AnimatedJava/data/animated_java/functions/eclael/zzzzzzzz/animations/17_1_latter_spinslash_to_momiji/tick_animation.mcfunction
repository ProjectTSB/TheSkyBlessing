scoreboard players add @s aj.eclael.animation.17_1_latter_spinslash_to_momiji.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.17_1_latter_spinslash_to_momiji.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/17_1_latter_spinslash_to_momiji/apply_frame_as_root
execute if score @s aj.eclael.animation.17_1_latter_spinslash_to_momiji.local_anim_time matches 95.. run function animated_java:eclael/zzzzzzzz/animations/17_1_latter_spinslash_to_momiji/end