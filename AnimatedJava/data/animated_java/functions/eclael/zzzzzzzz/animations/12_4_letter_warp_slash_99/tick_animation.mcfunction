scoreboard players add @s aj.eclael.animation.12_4_letter_warp_slash_99.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.eclael.animation.12_4_letter_warp_slash_99.local_anim_time
function animated_java:eclael/zzzzzzzz/animations/12_4_letter_warp_slash_99/apply_frame_as_root
execute if score @s aj.eclael.animation.12_4_letter_warp_slash_99.local_anim_time matches 18.. run function animated_java:eclael/zzzzzzzz/animations/12_4_letter_warp_slash_99/end