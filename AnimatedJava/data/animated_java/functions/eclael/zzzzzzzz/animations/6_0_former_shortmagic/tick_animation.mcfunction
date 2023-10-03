scoreboard players add @s aj.eclael.animation.6_0_former_shortmagic.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.6_0_former_shortmagic.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/6_0_former_shortmagic/apply_frame_as_root
execute if score @s aj.eclael.animation.6_0_former_shortmagic.local_anim_time matches 80.. run function animated_java:eclael/zzzzzzzz/animations/6_0_former_shortmagic/end