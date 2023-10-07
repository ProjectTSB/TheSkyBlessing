scoreboard players add @s aj.eclael.animation.13_6_latter_quick_iai_1.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.13_6_latter_quick_iai_1.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/13_6_latter_quick_iai_1/apply_frame_as_root
execute if score @s aj.eclael.animation.13_6_latter_quick_iai_1.local_anim_time matches 72.. run function animated_java:eclael/zzzzzzzz/animations/13_6_latter_quick_iai_1/end