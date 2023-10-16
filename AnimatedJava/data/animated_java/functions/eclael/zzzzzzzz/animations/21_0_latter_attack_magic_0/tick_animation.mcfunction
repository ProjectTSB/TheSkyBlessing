scoreboard players add @s aj.eclael.animation.21_0_latter_attack_magic_0.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.21_0_latter_attack_magic_0.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/21_0_latter_attack_magic_0/apply_frame_as_root
execute if score @s aj.eclael.animation.21_0_latter_attack_magic_0.local_anim_time matches 40.. run function animated_java:eclael/zzzzzzzz/animations/21_0_latter_attack_magic_0/end