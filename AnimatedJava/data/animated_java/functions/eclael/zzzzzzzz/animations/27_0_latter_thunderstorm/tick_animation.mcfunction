scoreboard players add @s aj.eclael.animation.27_0_latter_thunderstorm.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.27_0_latter_thunderstorm.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/27_0_latter_thunderstorm/apply_frame_as_root
execute if score @s aj.eclael.animation.27_0_latter_thunderstorm.local_anim_time matches 65.. run function animated_java:eclael/zzzzzzzz/animations/27_0_latter_thunderstorm/end