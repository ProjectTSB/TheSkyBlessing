scoreboard players add @s aj.eclael.animation.23_0_lightningfast.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.23_0_lightningfast.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/23_0_lightningfast/apply_frame_as_root
execute if score @s aj.eclael.animation.23_0_lightningfast.local_anim_time matches 35.. run function animated_java:eclael/zzzzzzzz/animations/23_0_lightningfast/end