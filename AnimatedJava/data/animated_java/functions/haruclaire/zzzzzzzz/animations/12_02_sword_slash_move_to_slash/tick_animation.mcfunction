scoreboard players add @s aj.haruclaire.animation.12_02_sword_slash_move_to_slash.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.12_02_sword_slash_move_to_slash.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/apply_frame_as_root
execute if score @s aj.haruclaire.animation.12_02_sword_slash_move_to_slash.local_anim_time matches 41.. run function animated_java:haruclaire/zzzzzzzz/animations/12_02_sword_slash_move_to_slash/end