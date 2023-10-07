scoreboard players add @s aj.eclael.animation.13_3_latter_quick_slash_2.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.13_3_latter_quick_slash_2.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/13_3_latter_quick_slash_2/apply_frame_as_root
execute if score @s aj.eclael.animation.13_3_latter_quick_slash_2.local_anim_time matches 25.. run function animated_java:eclael/zzzzzzzz/animations/13_3_latter_quick_slash_2/end