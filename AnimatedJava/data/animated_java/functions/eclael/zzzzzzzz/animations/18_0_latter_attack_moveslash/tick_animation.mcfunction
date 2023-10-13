scoreboard players add @s aj.eclael.animation.18_0_latter_attack_moveslash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.18_0_latter_attack_moveslash.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/18_0_latter_attack_moveslash/apply_frame_as_root
execute if score @s aj.eclael.animation.18_0_latter_attack_moveslash.local_anim_time matches 68.. run function animated_java:eclael/zzzzzzzz/animations/18_0_latter_attack_moveslash/end