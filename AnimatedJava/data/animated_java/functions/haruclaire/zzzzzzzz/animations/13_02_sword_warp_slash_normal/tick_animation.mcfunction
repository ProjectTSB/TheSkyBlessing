scoreboard players add @s aj.haruclaire.animation.13_02_sword_warp_slash_normal.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.13_02_sword_warp_slash_normal.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/13_02_sword_warp_slash_normal/apply_frame_as_root
execute if score @s aj.haruclaire.animation.13_02_sword_warp_slash_normal.local_anim_time matches 26.. run function animated_java:haruclaire/zzzzzzzz/animations/13_02_sword_warp_slash_normal/end