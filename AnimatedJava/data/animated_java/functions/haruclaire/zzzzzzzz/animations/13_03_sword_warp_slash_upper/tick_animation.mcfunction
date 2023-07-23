scoreboard players add @s aj.haruclaire.animation.13_03_sword_warp_slash_upper.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.13_03_sword_warp_slash_upper.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/13_03_sword_warp_slash_upper/apply_frame_as_root
execute if score @s aj.haruclaire.animation.13_03_sword_warp_slash_upper.local_anim_time matches 27.. run function animated_java:haruclaire/zzzzzzzz/animations/13_03_sword_warp_slash_upper/end