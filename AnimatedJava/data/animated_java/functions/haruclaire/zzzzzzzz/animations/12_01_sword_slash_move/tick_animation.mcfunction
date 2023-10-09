scoreboard players add @s aj.haruclaire.animation.12_01_sword_slash_move.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.haruclaire.animation.12_01_sword_slash_move.local_anim_time
function animated_java:haruclaire/zzzzzzzz/animations/12_01_sword_slash_move/apply_frame_as_root
execute if score @s aj.haruclaire.animation.12_01_sword_slash_move.local_anim_time matches 36.. run function animated_java:haruclaire/zzzzzzzz/animations/12_01_sword_slash_move/end