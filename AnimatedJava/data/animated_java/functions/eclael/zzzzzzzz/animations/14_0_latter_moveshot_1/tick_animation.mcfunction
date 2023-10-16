scoreboard players add @s aj.eclael.animation.14_0_latter_moveshot_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.14_0_latter_moveshot_1.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/14_0_latter_moveshot_1/apply_frame_as_root
execute if score @s aj.eclael.animation.14_0_latter_moveshot_1.local_anim_time matches 26.. run function animated_java:eclael/zzzzzzzz/animations/14_0_latter_moveshot_1/end